Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github,
           Rails.application.secrets.omniauth_provider_key,
           Rails.application.secrets.omniauth_provider_secret,
           scope:          'user,repo,gist',
           client_options: {
             ssl: { verify: false }
           }
end

OmniAuth.config.logger = Rails.logger
