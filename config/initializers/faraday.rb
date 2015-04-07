FaradayAPICache.store = Moneta.new(:Redis, options = { host:       '192.168.55.33',
                                                       db:         1,
                                                       expires_in: 90.minutes })

# Parallel Requests w/ Faraday + Typhoeus
# https://gist.github.com/ezkl/2272636
HYDRA                 = Typhoeus::Hydra.new(:max_concurrency => 10)

stack = Faraday::RackBuilder.new do |builder|
  # builder.request :api_cache
  # builder.response :logger
  builder.use Faraday::HttpCache, store: Rails.cache
  builder.use Octokit::Response::RaiseError
  builder.adapter :typhoeus
end

Octokit.middleware         = stack
Octokit.connection_options = { :parallel_manager => HYDRA }
Octokit.user ENV['FARADAY_USER']