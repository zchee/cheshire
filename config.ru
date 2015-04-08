# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

# https://github.com/puma/puma/issues/450
# use PumaOOBGC, 10, Rails.logger

# https://www.airpair.com/ruby-on-rails/performance
require 'unicorn/oob_gc'
use(Unicorn::OobGC, 3)

# https://github.com/tmm1/gctools/issues/11
# require 'gctools/oobgc'
# if defined?(Unicorn::HttpRequest)
#   GC::OOB.run
#   use(GC::OOB::UnicornMiddleware)
# end
