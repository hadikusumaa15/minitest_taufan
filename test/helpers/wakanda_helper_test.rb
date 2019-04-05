require "minitest_helper"

describe WakandasHelper do
    it "converts number to currency" do
      number_to_currency(5).must_equal "$5.00"
    end
    
    it "belom dikerjakan"
    p "lah kalo skipped hars apA?"
    
    it "is also skipped" do
      skip "Do this later"
    end
end