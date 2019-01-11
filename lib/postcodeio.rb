require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'
# include services
# superclass
class Postcodeio

  def single_postcode_service
    SinglePostcodeService.new

  end


  def multiple_postcodes_service
    MultiplePostcodeService.new

  end

end
