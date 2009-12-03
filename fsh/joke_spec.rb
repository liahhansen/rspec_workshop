require "#{File.dirname(__FILE__)}/joke"

describe Joke do
  it "tells a joke" do
    Joke.new.fsh.should == "What do you call a fish without any eyes?"
  end
end
