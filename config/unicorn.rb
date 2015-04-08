# https://devcenter.heroku.com/articles/rails-unicorn
worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
timeout 15
preload_app true

if ENV['UNICORN_ENABLE_OOBGC'] == '1' && RUBY_VERSION < "2.2.0"
  require 'middleware/unicorn_oobgc'
  Middleware::UnicornOobgc.init
end

stderr_path File.expand_path('../../log/unicorn.log', __FILE__)
stdout_path File.expand_path('../../log/unicorn.log', __FILE__)
GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly == true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
