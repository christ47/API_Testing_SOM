describe SinglePostcodeService do

  before(:all) do
    @single_postcode_service = Postcodeio.new.single_postcode_service
    #calling superclass to store instance from single postcode service
    @single_postcode_service.get_single_postcode('cv56hz')
  end

  it "should respond with a status message of 200" do
    # puts @single_postcode_service.print_results
    expect(@single_postcode_service.get_status_code).to eq 200
  end

  it "should have a result hash" do
      expect(@single_postcode_service.get_results). to be_kind_of Hash
  end
end
