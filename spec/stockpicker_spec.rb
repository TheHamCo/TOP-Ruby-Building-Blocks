require_relative '../stockpicker'	

describe "stock picker" do
	
	it "basic easy case" do
		stockpicker([1,2]).should == [0,1]
	end

	it "edge case lowest day is the last day (minimize loss)" do
		stockpicker([3,2,1]).should == [1,2]
	end

	it "edge case highest day is the first day" do
		stockpicker([10,2,5]).should ==  [1,2]
	end

	it "buys before it sells" do
		stockpicker([100,100,100,1,1,1,2,2]).should == [3,6]
	end

	it "implements the given case" do
		stockpicker([17,3,6,9,15,8,6,1,10]).should == [1,4]
	end
end