class OkraServerError < StandardError
  attr_reader :response

  def initialize(response=nil)
    @response = response
  end

  class OkraBadKeyError < StandardError
  end

  class ArgumentError < StandardError
  end
end