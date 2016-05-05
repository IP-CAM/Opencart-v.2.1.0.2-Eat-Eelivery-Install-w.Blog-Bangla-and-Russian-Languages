var gulp = require("gulp");
var sass = require("gulp-sass");
var rename = require("gulp-rename");


gulp.task('sass', function () {
  return gulp.src('./catalog/view/theme/default/stylesheet/sass/**/*.scss')
    .pipe(sass().on('error', sass.logError))
    /*.pipe(rename("main2.css"))*/
    .pipe(gulp.dest('./catalog/view/theme/default/stylesheet/'));
});

gulp.task('sass:watch', function () {
  gulp.watch('./catalog/view/theme/default/stylesheet/sass/**/*.scss', ['sass']);
});

