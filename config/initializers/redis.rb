require 'redis'

$redis = Redis.new(:host => '192.168.55.33', :port => 6379, :db => 0, :driver => :hiredis)