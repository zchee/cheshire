Rails.application.configure do
  config.react.addons                = true
  config.react.jsx_transform_options = {
    harmony: true,
  }
end
