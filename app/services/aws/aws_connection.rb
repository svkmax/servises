require 'fog'
class AwsConnection
  include Singleton

  def self.connection
    Fog::Storage.new(
        provider: 'AWS',
        aws_access_key_id: 'Settings.aws_access_key_id',
        aws_secret_access_key: 'Settings.aws_secret_key')
  end
end