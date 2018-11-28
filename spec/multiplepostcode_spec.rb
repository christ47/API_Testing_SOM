describe MultiplePostcodeService do

  before(:all) do
    @postcode_array = ['SW15FB', 'CV56HZ']
    @multiple_postcode_service = Postcodeio.new.multiple_postcodes_service
    #calling superclass to store instance from multiple postcode service
    @multiple_postcode_service.get_multiple_postcode(@postcode_array)
  end

  it "should respond with a status message of 200" do
    expect(@multiple_postcode_service.get_status_code).to eq 200
  end

  it "should have a result hash" do
      @multiple_postcode_service.get_results.each do |i|
        expect(i).to be_kind_of Hash

      end
    
  end
end
