module Proxy::Dns

  class Route53 < Record

    require 'aws-sdk'
    
    include Proxy::Log
    include Proxy::Util

    attr_reader :resolver

    def initialize(options = {})
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
