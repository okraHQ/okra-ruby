require 'httparty'
require_relative "../../okra_modules/base_endpoints"
require "json"
require_relative "../../error"

class Base 

    attr_reader :okra_object


    #method to initialize this class

    def initialize(okra_object=nil)
        unless !okra_object.nil?
            raise ArgumentError, "Okra Object is required!!!"
        end
        @okra_object = okra_object
    end

    #method to make a get request

    def get_request(endpoint)

        begin
            response = HTTParty.get(endpoint, :headers => { "Authorization" => "Bearer #{okra_object.secret_key}" })
            unless (response.code ==200 || response.code == 201)
                raise OkraServerError.new(response), "HTTP Code #{response.code}: #{response.body}"
        end

        return response
        unless(response.code != 0)
            raise OkraServerError.new(response), "Server Message: #{response.Message}"
        end

    rescue JSON::ParserError => jsonerr
        raise OkraServerError.new(response), "Invalid result data. Could not parse JSON response body \n #{jsonerr.message}"
        return response
    end 
  end

    #method to make a post request

    def post_request(endpoint, data)
        begin
            response = HTTParty.post(endpoint, {
                body: data,
                headers: {
                    "Content-Type" => "application/json",
                    "Authorization" => "Bearer #{okra_object.secret_key}"
                }
            })

            unless(response.code == 200 || response.code == 201)
                raise OkraServerError.new(response), "HTTP Code #{response.code}: #{response.body}"
            end
            return response
        end
    end

    # method to make a delete request
  def delete_request(endpoint, data)
    begin
      response = HTTParty.delete(endpoint, {
        body: data,
        headers: {
          "Content-Type" => "application/json",
          "Authorization" =>  "Bearer #{okra_object.secret_key}"
        }
      })

      unless (response.code == 200 || response.code == 201)
        raise OkraServerError.new(response), "HTTP Code #{response.code}: #{response.body}"
      end
      return response
    end
end

# method to check if the passed parameters is equal to the expected parameters
def check_passed_parameters(required_params, passed_params)

    # This is used to check if the passed authorization parameters matches the required parameters
    required_params.each do |k, v|
      if !passed_params.key?(k)
        raise IncompleteParameterError, "Parameters Incomplete, Missing Parameter: #{k}, Please pass in the complete parameter."
      end
    end
end

end