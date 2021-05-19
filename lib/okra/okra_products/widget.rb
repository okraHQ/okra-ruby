require_relative "base/base.rb"
require 'json'

class Widget < Base

    def create_widget_link(data)
        base_url = okra_object.base_url
        #certain that the required parameters are passed
        required_params = ["name", "countries", "billable_products", "color", "support_email"] 
        check_passed_parameters(required_params, data)
        payload = data.to_json
        response = post_request("#{base_url}/links/new", payload) 
        return response
    end
end