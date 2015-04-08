Rails.application.configure do
# Paths, that should be browserified. We browserify everything, that
# matches (===) one of the paths. So you will most likely put lambdas
# regexes in here.
#
# By default only files in /app and /node_modules are browserified,
# vendor stuff is normally not made for browserification and may stop
# working.
#   config.browserify_rails.paths << /vendor\/assets\/javascripts\/module.js/
# Environments, in which to generate source maps
#
# The default is none
  config.browserify_rails.source_map_environments << 'development'

# Should the node_modules directory be evaluated for changes on page load
#
# The default is `false`
#   config.browserify_rails.evaluate_node_modules = true

# Force browserify on every found JavaScript asset
#
# The default is `false`
#   config.browserify_rails.force                 = true

# Command line options used when running browserify
#
  config.browserify_rails.commandline_options = "--transform reactify --extension=\".jsx\""

end
