class UsersController < ApplicationController
  def show
    @user = @user = current_user
    
  end
  
end
