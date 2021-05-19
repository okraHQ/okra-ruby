require_relative "base/base.rb"
require 'json'

class Balance < Base

    def fetch_balance(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["page", "limit"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/balances", payload) 
        return response
    end

    def get_by_id(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BALANCE_ENDPOINT}/getBalanceById", payload) 
        return response
    end

    def get_by_customer(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BALANCE_ENDPOINT}/getByCustomer", payload) 
        return response
    end

    def get_by_date(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["from", "to"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BALANCE_ENDPOINT}/getByDate", payload) 
        return response
    end

    def get_by_account(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["bank"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BALANCE_ENDPOINT}/getByAccount", payload) 
        return response
    end

    def get_by_customerDate(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["to", "from", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::BALANCE_ENDPOINT}/getByCustomerDate", payload) 
        return response
    end

    def balance_refresh(account_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/balance/refresh", payload) 
        return response
    end

    def balance_check(account_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/balance/check", payload) 
        return response
    end

    def enhanced_balance(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account_id", "customer_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/balance/process", payload) 
        return response
    end

end