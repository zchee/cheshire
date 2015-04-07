Peek.into Peek::Views::PerformanceBar
Peek.into Peek::Views::Redis
Peek.into Peek::Views::Faraday
Peek.into Peek::Views::PG
Peek.into Peek::Views::GC
Peek.into Peek::Views::Sidekiq
Peek.into Peek::Views::Rblineprof
Peek.into Peek::Views::Git

Rails.application.configure do
  config.peek.adapter = :redis, {
    :client     => Redis.new(:host => '192.168.55.33', :port => 6379, :db => 0, :driver => :hiredis),
    :expires_in => 60 * 30 # => 30 minutes in seconds
  }
end