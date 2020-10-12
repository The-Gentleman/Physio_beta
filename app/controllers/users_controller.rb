class UsersController < ApplicationController

    def new 
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            render :new
        end 
    end 

    def show 
        @user = User.find(params[:id])
    end 



    private 
    def user_params
        params.require(:user).permit(:username, :password)
    end 
    # FIND A WAY TO MAKE THIS WORK
    # def find_user
    #     @user = User.find_by(id: params[:id])
    #     raise UserNotFound if !@user 
    # end 

end
