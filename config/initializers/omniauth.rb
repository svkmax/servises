OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :database_auth unless Rails.env.production?
  # provider :database_auth , "key1", "ke2"
end