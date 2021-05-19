require_relative "base/base.rb"
require 'json'

class Payment < Base

    def generate_payment_link(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["amount", "name", "currency", "account", "countries", "note", "type"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/link/create", payload) 
        return response
    end

    def create_a_charge(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["amount", "currency", "account_to_debit"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/initiate", payload) 
        return response
    end

    def initiate_future_charge(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["amount", "currency", "authorization"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/authorization/initiate", payload) 
        return response
    end

    def cancel_future_charge(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["link", "customer", "authorization", "account"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/authorization/cancel", payload) 
        return response
    end

    def reauth_future_payment(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["link", "customer", "authorization", "account"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/authorization/reauth", payload) 
        return response
    end

    def list_payment_auth(data)
        base_url = okra_object.base_url
        payload = data.to_json
        response = post_request("#{base_url}/pay/authorization/list", payload) 
        return response
    end

    def verify_payment(payment_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["payment_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/verify", payload) 
        return response
    end

    def refund_payment(payment_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["payment_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/refund", payload) 
        return response
    end

    def cancel_payment(payment_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["payment_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/cancel", payload) 
        return response
    end

    def get_all_payment(payment_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["payment_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/get", payload) 
        return response
    end

    def get_payment_by_id(payment_id)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["payment_id"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/pay/get/Id", payload) 
        return response
    end

    def receieve_payout(data)
        base_url = okra_object.base_url
        payload = data.to_json
        response = post_request("#{base_url}/pay/payout", payload) 
        return response
    end
end