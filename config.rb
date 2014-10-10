require './tilt_jade.rb'

#puts Tilt.mappings.inspect
# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :expanded # by Compass.app 
output_style = :expanded # by Fire.app 

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true
relative_assets = false # by Fire.app 

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false
line_comments = false # by Fire.app 

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
preferred_syntax = :sass
sass_options = {:debug_info=>false} # by Fire.app 
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

css_dir = "public/css" # by Fire.app 
sass_dir = "sass" # by Fire.app 
images_dir = "public/img" # by Fire.app 
javascripts_dir = "public/js" # by Fire.app 

fireapp_coffeescripts_dir = "coffeescripts" # by Fire.app 
fireapp_coffeescript_options = {:bare=>false} # by Fire.app 

fireapp_livescripts_dir = "livescripts" # by Fire.app 
fireapp_livescript_options = {:bare=>false} # by Fire.app 

fireapp_minifyjs_on_build = false # by Fire.app 
fireapp_always_report_on_build = true # by Fire.app 
sourcemap = false # by Fire.app 
