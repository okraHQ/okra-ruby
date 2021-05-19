require_relative "base/base.rb"
require 'json'

class Income < Base

    def fetch_income(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["page", "limit"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/income", payload) 
        return response
    end

    def process_income(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["customer_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/income/process", payload) 
        return response
    end

    def get_by_id(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::INCOME_ENDPOINT}/getById", payload) 
        return response
    end

    def get_by_customer(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::INCOME_ENDPOINT}/getByCustomer", payload) 
        return response
    end

    def get_by_date(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["from", "to"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::INCOME_ENDPOINT}/getByDate", payload) 
        return response
    end

    def get_by_customerDate(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["to", "from", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::INCOME_ENDPOINT}/getByCustomerDate", payload) 
        return response
    end
end