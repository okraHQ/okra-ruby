require_relative "base/base.rb"
require 'json'

class Transactions < Base

    def fetch_realtime_transactions(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["page", "limit"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/transactions", payload) 
        return response
    end

    def fetch_credit_and_debit_transactions(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["customer", "account", "record", "bank"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/records/credit-debit/get", payload) 
        return response
    end

    def get_by_id(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/getById", payload) 
        return response
    end

    def get_by_customer(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/getByCustomer", payload) 
        return response
    end

    def get_by_date(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["from", "to"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/getByDate", payload) 
        return response
    end

    def get_by_bank(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["bank"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/getByBank", payload) 
        return response
    end

    def get_by_customerDate(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["to", "from", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/getByCustomerDate", payload) 
        return response
    end

    def get_by_account(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/getByAccount", payload) 
        return response
    end

    def get_by_record(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["record_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/byRecord", payload) 
        return response
    end

    def get_by_option(option_name)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["option_name"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}#{BASE_ENDPOINTS::TRANSACTION_ENDPOINT}/byOptions", payload) 
        return response
    end

    def refresh_transaction(account_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/transactions/refresh", payload) 
        return response
    end

    def enhanced_transactions(account_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/transactions/process", payload) 
        return response
    end
end