if defined? BetterErrors
  BetterErrors::Middleware.allow_ip! '192.168.55.1' if [:development, :test].member?(Rails.env.to_sym)
  BetterErrors.editor='x-mine://open?file=%{file}&line=%{line}'
end
