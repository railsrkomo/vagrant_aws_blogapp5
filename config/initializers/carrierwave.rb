CarrierWave.configure do |config|
    require 'carrierwave/storage/abstract'
    require 'carrierwave/storage/file'
    require 'carrierwave/storage/fog'
  
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        provider:              'AWS',
        aws_access_key_id:     ENV["AWSAccessKeyId"],
        aws_secret_access_key: ENV["AWSSecretKey"],
        region:                'ap-northeast-1',
        path_style:            true,
    }
  
    config.fog_public     = true
    config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}
  
    case Rails.env
      when 'production'
        config.fog_directory = 'blog-5-proc'
        config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/blog-5-proc'
      when 'development'
        config.fog_directory = 'blog-5-proc'
        config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/blog-5-proc'
    end
  end