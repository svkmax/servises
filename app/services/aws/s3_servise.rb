require 'fog'
# class is a for fork with S3 storage
# requires fog gem
class S3Servise
  # include Singleton
  class << self; attr_accessor :s3_connection end

  def self.create_folder(folder_name)
    @s3_connection.directories.create(
      key: folder_name,
      public: true
    )
  end

  def self.upload_file(path_to, file_name)
    @s3_connection.directory.files.create(
      key: file_name,
      body: File.open("#{path_to}/#{file_name}"),
      public: true
    )
  end

  # private section methods
  def self.s3_connection
    @s3_connection ||= AwsConnection.connection
  end

  def self.directory(dir_name)
    @s3_connection.directories.get(dir_name)
  end

  # class variable initialization
  # use until require in real class
  s3_connection
  private_class_method :s3_connection, :new
end
