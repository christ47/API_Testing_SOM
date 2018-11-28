require 'httparty'
require 'json'

class MultiplePostcodeService

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcode(postcode_array)
    @multiple_postcode_data = JSON.parse(self.class.post("/postcodes/", body: {"postcodes" => postcode_array}).body)
  end

  def get_status_code
    @multiple_postcode_data["status"]
  end
  def print_results
    @multiple_postcode_data
  end

  def get_results
    @multiple_postcode_data['result']
  end
  def get_status_code
    @multiple_postcode_data["status"]
  end
end
