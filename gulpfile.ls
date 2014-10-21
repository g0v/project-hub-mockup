require! <[gulp gulp-util gulp-livescript connect-livereload gulp-jade gulp-livereload gulp-compass]>
require! <[express path]>

app = express!

build_path = '_public'

gulp.task 'sass', ->
  gulp.src './sass/*.sass'
    .pipe gulp-compass {sass: 'sass', css: "#{build_path}/css", sourcemap: true}
    .pipe gulp.dest "#{build_path}"

gulp.task 'jade', ->
  gulp.src 'views/*.jade'
    .pipe gulp-jade!
    .pipe gulp.dest "#{build_path}"

gulp.task 'assets', ->
  gulp.src 'assets/**/*'
    .pipe gulp.dest "#{build_path}/assets"

gulp.task 'json', ->
  gulp.src 'livescripts/project-list.ls'
    .pipe gulp-livescript({+json, +bare}).on 'error', gulp-util.log
    .pipe gulp.dest "#{build_path}/json/"

gulp.task 'server', ->
  app.use connect-livereload!
  app.use express.static path.resolve "#{build_path}"
  app.listen 3000
  gulp-util.log 'listening on port 3000'

gulp.task 'watch', ->
  gulp-livereload.listen silent: true
  gulp.watch 'sass/*.sass', <[sass]> .on \change, gulp-livereload.changed
  gulp.watch 'views/*.jade', <[jade]> .on \change, gulp-livereload.changed
  gulp.watch 'assets/**/*', <[assets]> .on \change, gulp-livereload.changed
  gulp.watch 'livescripts/project-list.ls', <[json]> .on \change, gulp-livereload.changed

gulp.task 'build', <[jade sass json assets]>
gulp.task 'dev', <[build server watch]>
gulp.task 'default', <[build]>
