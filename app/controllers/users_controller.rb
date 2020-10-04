class UsersController < ApplicationController
    def home 
    end 

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

    def destroy
        session.clear
        redirect_to root_path
    end 



    private 
    def user_params
        params.require(:user).permit(:username, :password)
    end 
end
