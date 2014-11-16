module Proxy::Dns

  class Route53 < Record

    require 'aws-sdk'
    
    include Proxy::Log
    include Proxy::Util

    attr_reader :resolver

    def initialize(options = {})
      # Check we have the required settings
      if Proxy::Dns::Plugin.settings.aws_access_key_id.nil? ||
         Proxy::Dns::Plugin.settings.aws_secret_access_key.nil?
        raise 'Unable to find AWS access key and secret key'
      end

      # Create a Route53 Connection Object
      @r53 = Route53::Connection.new(
        Proxy::Dns::Plugin.settings.aws_access_key_id,
        Proxy::Dns::Plugin.settings.aws_secret_access_key
      )

      # Load the rest of the DNS options
      super(options)
    end

    ##
    # Handle record creation
    def create
      
    end

    ##
    # Handle record removal
    def remove
    end

    ##
    # Handle finding existing records
    def dns_find(key)
      
    end

  end
  
end
