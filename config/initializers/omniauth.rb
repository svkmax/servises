OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :database_auth unless Rails.env.production?
  # provider :developer
end