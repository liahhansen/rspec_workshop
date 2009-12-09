require File.dirname(__FILE__) + '/../spec_helper'
module UserSpecHelper
  def valid_user_attributes
    { :id => 999999, 
      :first_name => 'Marge',
      :last_name => 'Simpson',
      :position => '1', 
      :wish_list => "Spa Certificate", 
      :image => "marge.jpg"  }
  end
end


describe User do
  include UserSpecHelper
  before do
      @user = User.new
   end

  specify "should be invalid without a first_name" do  
    @user.attributes = valid_user_attributes.except(:first_name) 
    @user.should_not be_valid
    @user.first_name = 'Marge'
    @user.should be_valid
  end
  
  specify "should be invalid without a last_name" do
    @user.attributes = valid_user_attributes.except(:last_name) 
    @user.should_not be_valid
    @user.last_name = 'Simpson'
    @user.should be_valid
  end
  
  specify "should be invalid without a position" do
    @user.attributes = valid_user_attributes.except(:position) 
    @user.should_not be_valid
    @user.position = '1'
    @user.should be_valid
  end
  
  specify "should be invalid without a wish_list" do
    @user.attributes = valid_user_attributes.except(:wish_list) 
    @user.should_not be_valid
    @user.wish_list = 'Spa Certificate'
    @user.should be_valid
  end
end
