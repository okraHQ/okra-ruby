require_relative "okra/version"
require_relative "okra/error"
require_relative "okra/okra_modules/base_endpoints"
require_relative "okra/okra_products/auth"
require_relative "okra/okra_products/identity"
require_relative "okra/okra_products/bank"
require_relative "okra/okra_products/balance"
require_relative "okra/okra_products/account"
require_relative "okra/okra_products/transactions"
require_relative "okra/okra_products/income"
require_relative "okra/okra_products/revenue"
require_relative "okra/okra_products/payment"
require_relative "okra/okra_products/assets_and_liabilities"
require_relative "okra/okra_products/other_products"
require_relative "okra/okra_products/customer"
require_relative "okra/okra_products/widget"


class OkraSDK

    attr_accessor :public_key, :secret_key, :production, :url


    #method to initialize Okra object

    def initialize(public_key=nil, secret_key=nil, production=false)
        @public_key = public_key
        @secret_key = secret_key
        @production = production

        okra_sandbox_url = BASE_ENDPOINTS::OKRA_SANDBOX_URL
        okra_live_url = BASE_ENDPOINTS::OKRA_LIVE_URL

        #set okra url to sandbox or live if we are in production or development

        if production ==false
            @url = okra_sandbox_url
        else
            @url = okra_live_url
    end

    def base_url
        return url
    end

    #check if we set our public, secret keys to the environment variable

    if (public_key.nil?)
        @public_key = ENV['OKRA_PUBLIC_KEY']
    else
        @public_key = public_key
    end

    if (secret_key.nil?)
        @secret_key = ENV['OKRA_SECRET_KEY']
    else
        @secret_key = secret_key
    end

    warn "Warning: To ensure your okra api keys are safe, It is best to always set your keys in the environment variable"

    #raise this error if no public key is passed

    unless !@public_key.nil?

        raise OkraBadKeyError, "No public key supplied and couldn't find any in environment variables. Make sure to set public key as an environment variable OKRA_PUBLIC_KEY"
    end

      #raise this error if no secret key is passed

      unless !@secret_key.nil?

        raise OkraBadKeyError, "No secret key supplied and couldn't find any in environment variables. Make sure to set secret key as an environment variable OKRA_SECRET_KEY"
      end

    end
end