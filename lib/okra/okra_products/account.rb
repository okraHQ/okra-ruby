require_relative "base/base.rb"
require 'json'

class Account < Base
    def realtime_bank_account_info(data)
        base_url = okra_object.base_url
        # check the currency to determine the type and the required parameters
        required_params = ["page", "limit"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/accounts", payload) 
        return response
    end

    def get_by_id(data)
        base_url = okra_object.base_url
        # check the currency to determine the type and the required parameters
        required_params = ["id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::ACCOUNT_ENDPOINT}/getById", payload) 
        return response
    end

    def get_by_customer(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::ACCOUNT_ENDPOINT}/getByCustomer", payload) 
        return response
    end

    def get_by_bank(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["bank"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::ACCOUNT_ENDPOINT}/getByBank", payload) 
        return response
    end

    def get_by_date(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["from", "to"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::ACCOUNT_ENDPOINT}/getByDate", payload) 
        return response
    end

    def get_by_customerDate(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["to", "from", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::ACCOUNT_ENDPOINT}/getByCustomerDate", payload) 
        return response
    end
end