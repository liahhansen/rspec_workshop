require "#{File.dirname(__FILE__)}/calculator"

describe Calculator do
  
  before do
    @calculator = Calculator.new
  end

  it "adds 0 and 0" do
    @calculator.add(0,0).should == 0
  end

  it "adds 2 and 2" do
    @calculator.add(2,2).should == 4
  end

  it "adds positive numbers" do
    @calculator.add(2,6).should == 8
  end

  it "subtracts numbers" do
    @calculator.subtract(10,4).should == 6
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      @calculator.sum([]).should == 0
    end
    
    it "computes the sum of an array of one number" do
      @calculator.sum([7]).should == 7
    end
    
    it "computes the sum of an array of two numbers" do
      @calculator.sum([7,11]).should == 18
    end
    
    it "computes the sum of an array of many numbers" do
      @calculator.sum([1,3,5,7,9]).should == 25
    end
  end
  
  # Test-Driving Bonus: once the above tests pass, 
  # write tests and code for the following:
  
  it "multiplies two numbers" 

  it "multiplies an array of numbers"
  
  it "raises one number to the power of another number" 
  
 

end
