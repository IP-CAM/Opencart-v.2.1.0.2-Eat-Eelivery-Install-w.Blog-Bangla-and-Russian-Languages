<?php
class ControllerCheckoutCheckout extends Controller {
	public function index() {
		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$this->response->redirect($this->url->link('checkout/cart'));
		}

		// Validate minimum quantity requirements.
		$products = $this->cart->getProducts();

		foreach ($products as $product) {
			$product_total = 0;

			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}

			if ($product['minimum'] > $product_total) {
				$this->response->redirect($this->url->link('checkout/cart'));
			}
		}

		$this->load->language('checkout/checkout');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		// Required by klarna
		if ($this->config->get('klarna_account') || $this->config->get('klarna_invoice')) {
			$this->document->addScript('http://cdn.klarna.com/public/kitt/toc/v1.0/js/klarna.terms.min.js');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_cart'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('checkout/checkout', '', 'SSL')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_checkout_option'] = $this->language->get('text_checkout_option');
		$data['text_checkout_account'] = $this->language->get('text_checkout_account');
		$data['text_checkout_payment_address'] = $this->language->get('text_checkout_payment_address');
		$data['text_checkout_shipping_address'] = $this->language->get('text_checkout_shipping_address');
		$data['text_checkout_shipping_method'] = $this->language->get('text_checkout_shipping_method');
		$data['text_checkout_payment_method'] = $this->language->get('text_checkout_payment_method');
		$data['text_checkout_confirm'] = $this->language->get('text_checkout_confirm');

		if (isset($this->session->data['error'])) {
			$data['error_warning'] = $this->session->data['error'];
			unset($this->session->data['error']);
		} else {
			$data['error_warning'] = '';
		}

		$data['logged'] = $this->customer->isLogged();

		if (isset($this->session->data['account'])) {
			$data['account'] = $this->session->data['account'];
		} else {
			$data['account'] = '';
		}

		$data['shipping_required'] = $this->cart->hasShipping();

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/checkout.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/checkout/checkout.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/checkout/checkout.tpl', $data));
		}
	}

	public function country() {
		$json = array();

		$this->load->model('localisation/country');

		$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);

		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function customfield() {
		$json = array();

		$this->load->model('account/custom_field');

		// Customer Group
		if (isset($this->request->get['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->get['customer_group_id'], $this->config->get('config_customer_group_display'))) {
			$customer_group_id = $this->request->get['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}

		$custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

		foreach ($custom_fields as $custom_field) {
			$json[] = array(
				'custom_field_id' => $custom_field['custom_field_id'],
				'required'        => $custom_field['required']
			);
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
    
    
    public function prepareProduct()
    {
        $data['products'] = array();

      $products = $this->cart->getProducts();

      foreach ($products as $product) {
       $product_total = 0;

       foreach ($products as $product_2) {
        if ($product_2['product_id'] == $product['product_id']) {
         $product_total += $product_2['quantity'];
        }
       }


       $option_data = array();

       foreach ($product['option'] as $option) {
        if ($option['type'] != 'file') {
         $value = $option['value'];
        } else {
         $upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

         if ($upload_info) {
          $value = $upload_info['name'];
         } else {
          $value = '';
         }
        }

        $option_data[] = array(
         'name'  => $option['name'],
         'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
        );
       }

       // Display prices
       if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
        $price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
       } else {
        $price = false;
       }

       // Display prices
       if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
        $total = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity']);
       } else {
        $total = false;
       }

       $recurring = '';

       if ($product['recurring']) {
        $frequencies = array(
         'day'        => $this->language->get('text_day'),
         'week'       => $this->language->get('text_week'),
         'semi_month' => $this->language->get('text_semi_month'),
         'month'      => $this->language->get('text_month'),
         'year'       => $this->language->get('text_year'),
        );

        if ($product['recurring']['trial']) {
         $recurring = sprintf($this->language->get('text_trial_description'), $this->currency->format($this->tax->calculate($product['recurring']['trial_price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax'))), $product['recurring']['trial_cycle'], $frequencies[$product['recurring']['trial_frequency']], $product['recurring']['trial_duration']) . ' ';
        }

        if ($product['recurring']['duration']) {
         $recurring .= sprintf($this->language->get('text_payment_description'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax'))), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
        } else {
         $recurring .= sprintf($this->language->get('text_payment_cancel'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax'))), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
        }
       }

       $data['products'][] = array(
        'product_id' => $product['product_id'],
        'cart_id'   => $product['cart_id'],
//        'thumb'     => $image,
        'name'      => $product['name'],
        'model'     => $product['model'],
        'option'    => $option_data,
        'recurring' => $recurring,
        'quantity'  => $product['quantity'],
        'stock'     => $product['stock'] ? true : !(!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning')),
        'reward'    => ($product['reward'] ? sprintf($this->language->get('text_points'), $product['reward']) : ''),
        'price'     => $price,
        'total'     => $total,
        'href'      => $this->url->link('product/product', 'product_id=' . $product['product_id'])
       );
      }
      return $data['products'];
    }

    public function prepareShippingInfo($info)
    {
     $order_data = array();

     $order_data['shipping_firstname'] = $info['customer']['firstname'];
     $order_data['shipping_lastname'] = '';
     $order_data['shipping_company'] = '';
     $order_data['shipping_address_1'] = $info['customer']['city'];
     $order_data['shipping_address_2'] = '';
     $order_data['shipping_city'] = '';
     $order_data['shipping_postcode'] = '';
     $order_data['shipping_zone'] = '';
     $order_data['shipping_zone_id'] = 0;
     $order_data['shipping_country'] = '';
     $order_data['shipping_country_id'] = 0;
     $order_data['shipping_address_format'] = '';
     $order_data['shipping_custom_field'] = array();

     if (isset($info['shipping'][0])) {
      $order_data['shipping_method'] = $info['shipping'][0]['title'];
     } else {
      $order_data['shipping_method'] = '';
     }
     if (isset($info['shipping'][0])) {
      $order_data['shipping_code'] = $info['shipping'][0]['code'];
     } else {
      $order_data['shipping_code'] = '';
     }
     return $order_data;
    }

    public function preparePaymentInfo($info)
    {
     $order_data = array();

     $order_data['payment_firstname'] = $info['customer']['firstname'];
     $order_data['payment_lastname'] = '';
     $order_data['payment_company'] = '';
     $order_data['payment_address_1'] = $info['customer']['city'];
     $order_data['payment_address_2'] = '';
     $order_data['payment_city'] = '';
     $order_data['payment_postcode'] = '';
     $order_data['payment_zone'] = '';
     $order_data['payment_zone_id'] = 0;
     $order_data['payment_country'] = '';
     $order_data['payment_country_id'] = 0;
     $order_data['payment_address_format'] = '';
     $order_data['payment_custom_field'] = array();

     if (isset($info['payment'][0])) {
      $order_data['payment_method'] = $info['payment'][0]['title'];
     } else {
      $order_data['payment_method'] = '';
     }

     if (isset($info['payment'][0])) {
      $order_data['payment_code'] = $info['payment'][0]['code'];
     } else {
      $order_data['payment_code'] = '';
     }


     return $order_data;
    }
    
    public function ajaxCreateConfirm(){
        
     $json = array();
     $json[] = $this->prepareProduct($this->request->get);
//     $json[] = $this->prepareCustomerInfo($this->request->get); 
//      $json[] = $this->prepareShippingInfo($this->request->get);
//      $json[] = $this->preparePaymentInfo($this->request->get);
     var_dump($this->request->get);
     
//     if(isset($this->request->get)){
//
//      
//      $json[] = $this->prepareCustomerInfo($this->request->get); 
//      $json[] = $this->prepareShippingInfo($this->request->get);
//      $json[] = $this->preparePaymentInfo($this->request->get);
//
//     }
//     $order_data = array();
//     if(!empty($json)){
//      foreach($json as $key => $value){
//       //var_dump($value);
//       if(!empty($value)){
//        foreach($value as $k=>$v){
//         $order_data[$k] = $v;
//        }
//       }
//      }
//     }
//
//     if(isset($order_data)){
//      $this->load->model('checkout/order');
//
//      $order_data['invoice_prefix'] = $this->config->get('config_invoice_prefix');
//      $order_data['store_id'] = $this->config->get('config_store_id');
//      $order_data['store_name'] = $this->config->get('config_name');
//      if ($order_data['store_id']) {
//       $order_data['store_url'] = $this->config->get('config_url');
//      } else {
//       $order_data['store_url'] = HTTP_SERVER;
//      }
//
//      $order_data['products'] = array();
//
//      foreach ($this->cart->getProducts() as $product) {
//       $option_data = array();
//
//       foreach ($product['option'] as $option) {
//        $option_data[] = array(
//         'product_option_id'       => $option['product_option_id'],
//         'product_option_value_id' => $option['product_option_value_id'],
//         'option_id'               => $option['option_id'],
//         'option_value_id'         => $option['option_value_id'],
//         'name'                    => $option['name'],
//         'value'                   => $option['value'],
//         'type'                    => $option['type']
//        );
//       }
//
//       $order_data['products'][] = array(
//        'product_id' => $product['product_id'],
//        'name'       => $product['name'],
//        'model'      => $product['model'],
//        'option'     => $option_data,
//        'download'   => $product['download'],
//        'quantity'   => $product['quantity'],
//        'subtract'   => $product['subtract'],
//        'price'      => $product['price'],
//        'total'      => $product['total'],
//        'tax'        => $this->tax->getTax($product['price'], $product['tax_class_id']),
//        'reward'     => $product['reward']
//       );
//      }
//
//      $order_data['comment'] = '';
//
//      $order_data['totals'] = array();
//
//      $total = 0;
//      $taxes = $this->cart->getTaxes();
//
//      $this->load->model('extension/extension');
//
//      $sort_order = array();
//
//      $results = $this->model_extension_extension->getExtensions('total');
//
//      foreach ($results as $key => $value) {
//       $sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
//      }
//
//      array_multisort($sort_order, SORT_ASC, $results);
//
//      foreach ($results as $result) 
//      {
//       if ($this->config->get($result['code'] . '_status')) {
//        $this->load->model('total/' . $result['code']);
//
//        $this->{'model_total_' . $result['code']}->getTotal($order_data['totals'], $total, $taxes);
//       }
//      }
//
//      $sort_order = array();
//
//      foreach ($order_data['totals'] as $key => $value) {
//       $sort_order[$key] = $value['sort_order'];
//      }
//
//      array_multisort($sort_order, SORT_ASC, $order_data['totals']);
//
//      $order_data['total'] = $total;
//
//      $order_data['affiliate_id'] = 0;
//      $order_data['commission'] = 0;
//      $order_data['marketing_id'] = 0;
//      $order_data['tracking'] = '';
//
//      $order_data['language_id'] = $this->config->get('config_language_id');
//      $order_data['currency_id'] = $this->currency->getId();
//      $order_data['currency_code'] = $this->currency->getCode();
//      $order_data['currency_value'] = $this->currency->getValue($this->currency->getCode());
//      $order_data['ip'] = $this->request->server['REMOTE_ADDR'];
//
//      if (!empty($this->request->server['HTTP_X_FORWARDED_FOR'])) {
//       $order_data['forwarded_ip'] = $this->request->server['HTTP_X_FORWARDED_FOR'];
//      } elseif (!empty($this->request->server['HTTP_CLIENT_IP'])) {
//       $order_data['forwarded_ip'] = $this->request->server['HTTP_CLIENT_IP'];
//      } else {
//       $order_data['forwarded_ip'] = '';
//      }
//
//      if (isset($this->request->server['HTTP_USER_AGENT'])) {
//       $order_data['user_agent'] = $this->request->server['HTTP_USER_AGENT'];
//      } else {
//       $order_data['user_agent'] = '';
//      }
//
//      if (isset($this->request->server['HTTP_ACCEPT_LANGUAGE'])) {
//       $order_data['accept_language'] = $this->request->server['HTTP_ACCEPT_LANGUAGE'];
//      } else {
//       $order_data['accept_language'] = '';
//      }
//
//      $order_id = $this->model_checkout_order->addOrder($order_data);
//     }
//
//     if(!empty($order_id)){
//      $this->session->data['order_id'] = $order_id;
//      $json['payment'] = $this->load->controller('payment/' . $order_data['payment_code']);
//     }
//
//     $this->response->addHeader('Content-Type: application/json');
//     $this->response->setOutput(json_encode($json['payment']));
    }
}