require_relative "base/base.rb"
require 'json'

class Customer < Base

    def list_customers(data)
        base_url = okra_object.base_url
        payload = data.to_json
        response = post_request("#{base_url}/customers/list", payload) 
        return response
    end

    def fetch_customer_by_field(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["value", "key"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/customers/find-customers-by", payload) 
        return response
    end

    def remove_customer(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/customers/remove", payload) 
        return response
    end

    def flag_customer(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer", "bank"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/customers/flag", payload) 
        return response
    end



    #======================================================== This is only for sandbox

    def generate_customer(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["number", "create"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/customers/generate", payload) 
        return response
    end

    def create_customer(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["noOfAccount", "name", "bank", "username", "password", "type", "volume", "identity", "internetSpeed"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/customers/create", payload) 
        return response
    end

    def fetch_customer(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/customers/get", payload) 
        return response
    end
end