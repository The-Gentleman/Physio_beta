class SessionsController < ApplicationController

    def index
    end 

    def new 
    end 

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else 
            flash[:message] = "Sorry, that username and/or password is invalid. Please try again."
            redirect_to login_path
        end 
    end 

    def google
        @user = User.find_or_create_by(username: auth['info']['name']) do |user|
            user.username = auth['info']['name']
            user.password = SecureRandom.hex(15)
        end 
        if @user.valid?
            session[:user_id]
            redirect_to user_path(@user)
        else 
            flash[:message] = "Wrong login. Try again."
            redirect_to root_path
        end 
    end 

    def destroy
        session.clear
        redirect_to root_path
    end 


    
    private
    def auth 
        request.env['omniauth.auth']
    end 

end
