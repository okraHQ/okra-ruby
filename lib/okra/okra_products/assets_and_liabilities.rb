require_relative "base/base.rb"
require 'json'

class AssetsAndLiabilities < Base

    def verify_liabilities(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/liabilities/process", payload) 
        return response
    end

    def verify_assets(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/assets/process", payload) 
        return response
    end

    def verify_insurance(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/insurance/process", payload) 
        return response
    end

end