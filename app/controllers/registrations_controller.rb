class RegistrationsController < ApplicationController

    def index
    puts "index"
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new
        @user.name = params[:name]
        @user.email = params[:email]
        @user.password = params[:password]
        @user.save
        session[:current_user_id]
        redirect_to(gossip_path(@user.id))
    end

    def login
    
    end

    def connexion
        @user_email = User.find_by(email: params[:email])
        @user_password = User.find_by(password: params[:password])
        if @user_email.email != params[:email] && @user_password.password != params[:password]
            redirect_to login_path
        else
            session[:current_user_id]
            redirect_to gossip_path(@user_email.id)
        end

    end
        
end