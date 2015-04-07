Rails.application.configure do
  config.react.variant               = :development
  config.react.addons                = true
  config.react.jsx_transform_options = {
    harmony: true,
  }
  config.react.replay_console        = true
end
