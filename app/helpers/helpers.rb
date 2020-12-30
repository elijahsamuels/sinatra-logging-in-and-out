class Helpers

    # returns the current user
    # should accept the session hash as an argument. This method should use the user_id from the session hash to find the user in the database and return that user
    def self.current_user(session)
        @user = User.find_by_id(session[:user_id])
        # @user_id = User.find_by(user_id: params[:user_id]) # this doesnt work here.
    end  

    
    # should also accept the session hash as an argument. This method should return true if the user_id is in the session hash and false if not
    def self.is_logged_in?(session)
        !!session[:user_id]
        #  # this works, but the above is faster
        # if @user == User.find_by_id(session[:user_id]) : true || false
        #     true
        # else
        #     false
        # end
    end

end