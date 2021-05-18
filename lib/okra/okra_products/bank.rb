require_relative "base/base.rb"
require 'json'

class Bank < Base

    def get_list_of_banks
        base_url = okra_object.base_url
        response = get_request("#{base_url}/banks/list")
        return response
    end

    def get_by_id(id)
        base_url = okra_object.base_url
        response = get_request("#{base_url}/banks/getById?id=#{id}")
        return response
    end

end