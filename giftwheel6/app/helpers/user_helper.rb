module UserHelper
    def spin
      @users = User.all
      @users.each do |user| 
        if user.position == 8
          user.position = 1
          user.save!
        else
          user.position+=1
          user.save!
        end     
      end
    end
end
