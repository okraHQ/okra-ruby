require_relative "base/base.rb"
require 'json'

class Identity < Base

    def fetch_identities(data)
        base_url = okra_object.base_url
        # check the currency to determine the type and the required parameters
        required_params = ["page", "limit"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/identities", payload) 
        return response
    end

    def get_by_id(data)
        base_url = okra_object.base_url
        # check the currency to determine the type and the required parameters
        required_params = ["id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::IDENTITY_ENDPOINT}/getById", payload) 
        return response
    end

    def get_by_customer(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::IDENTITY_ENDPOINT}/getByCustomer", payload) 
        return response
    end

    def get_by_date(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["from", "to"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::IDENTITY_ENDPOINT}/getByDate", payload) 
        return response
    end

    def get_by_bank(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["bank"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::IDENTITY_ENDPOINT}/getByBank", payload) 
        return response
    end

    def get_by_customerDate(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["to", "from", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::IDENTITY_ENDPOINT}/getByCustomerDate", payload) 
        return response
    end

    def fetch_identity_by_nuban(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["bank", "nuban"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/kyc/nuban-verify", payload) 
        return response
    end

    def rc_verify(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["rc_number", "company_name"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/kyc/rc-verify", payload) 
        return response
    end

    def rc_tin_verify(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["rc_number", "company_name", "tin_number"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/kyc/rc-tin-verify", payload) 
        return response
    end

    def tin_verify(data)
        base_url = okra_object.base_url
        #check the currency to determine the type and the required parameters
        required_params = ["company_name", "tin_number"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/kyc/tin-verify", payload) 
        return response
    end

end