require_relative "base/base.rb"
require 'json'

class OtherProducts < Base

    def selfie_verification(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["photo"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/identity/selfie/process", payload) 
        return response
    end

    def debit_to_credit_score(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/dtc-score/calculate", payload) 
        return response
    end

    def fetch_total_debits_and_credits(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/total-debits-credits", payload) 
        return response
    end

    def benefactors(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account", "customer", "bank"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/benefactors/process", payload) 
        return response
    end

    def transaction_networks(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/trans-networks/process", payload) 
        return response
    end

    def spending_patterns(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["account", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/spending-patterns/process", payload) 
        return response
    end

    def complete_view(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["bvn", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/complete-view/process", payload) 
        return response
    end

    def request_guarantors(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["guarantors", "customer"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/guarantors/request", payload) 
        return response
    end

    def product_records(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["record_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/records/get", payload) 
        return response
    end

    def get_records_by_customersBank(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["record_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/products/records/getByCustomerByBank", payload) 
        return response
    end

    def fetch_transaction_record(data)
        base_url = okra_object.base_url
        payload = data.to_json
        response = post_request("#{base_url}/records/transactions/get", payload) 
        return response
    end
end