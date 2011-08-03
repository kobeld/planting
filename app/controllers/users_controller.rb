class UsersController < ApplicationController
  
  def new
    @user = User.new 
    respond_to do |format|
      format.js
    end
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js {render 'fail_create.js.haml'}
      end
    end
  end
  
  def delete_duplicate
    User.delete_all(["id NOT IN (?)", 
        User.select('min(id) as id').group(:email).map(&:id)])
      
    @users = User.all
    respond_to do |format|
      format.js
    end
  end
  
  
end
