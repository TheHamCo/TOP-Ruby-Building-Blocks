require_relative '../caesar_cipher'	

describe "caesar cipher" do
	it "shifts a character right" do
		caesar_cipher('a',3).should == 'd'
	end

	it "accounts for nonletters" do
		caesar_cipher('a!123_+',3).should == 'd!123_+'
	end

	it "shift each character in a word right, no z to a wrap" do
		caesar_cipher('cat',5).should == 'hfy'
	end

	it "wrap z to a" do
		caesar_cipher("z",1).should == 'a'
	end

	it "wrap z to a" do
		caesar_cipher("computer",7).should == 'jvtwbaly'
	end

	it "keeps the same case" do
		caesar_cipher('CaT',5).should == 'HfY'
	end

	it "keeps the same case and wraps z to a" do
		caesar_cipher("CoMpUtEr",7).should == 'JvTwBaLy'
	end

	it "does everything at once" do
		caesar_cipher("What a string!123",5) == 'Bmfy f xywnsl!123'
	end
end