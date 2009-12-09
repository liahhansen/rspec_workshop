require File.dirname(__FILE__) + "/../spec_helper"
describe User do
  before do
    @user = User.new
    @mediamaid.mediamaid_file_name = "sample.gif"
   end
  
  it "should be invalid if mediamaid file name is nil" do
    @mediamaid.mediamaid_file_name = ""
    @mediamaid.should_not be_valid
  end
  
  it "should upload gifs" do
    @mediamaid.mediamaid_content_type = "image/gif"
    @mediamaid.should be_valid
  end

  it "should upload jpegs" do
    @mediamaid.mediamaid_content_type = "image/jpeg"
    @mediamaid.should be_valid
  end
  
  it "should upload pdf" do
    @mediamaid.mediamaid_content_type = "application/pdf"
    @mediamaid.should be_valid
  end
  
  it "should upload png" do
    @mediamaid.mediamaid_content_type = "image/png"
    @mediamaid.should be_valid
  end
  
  it "should upload flash" do
    @mediamaid.mediamaid_content_type = "application/x-shockwave-flash"
    @mediamaid.should be_valid
  end
  
  
  it "should be invalid if mediamaid content type is mp3" do
    @mediamaid.mediamaid_content_type = "audio/mp3"
    @mediamaid.should_not be_valid
  end
  
  
    
end