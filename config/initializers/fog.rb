CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJHLY2GA7JNMWVDSQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'imageuploder'                          # required
end

