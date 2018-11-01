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
        redirect_to('/')
    end

    def login
    
    end

    def connexion
        puts params
        @user_email = User.find_by(email: params[:email])
        @user_password = User.find_by(password: params[:password])
        if @user_email != params[:email] && @user_password != params[:password]
            redirect_to login_path, alert: "Watch it, mister!"
        else
            flash[:notice] = "Connexion reussi"
            redirect_to registrations_path
        end

    end
        def new_gossip
            @gossip = Gossip.new
        end

        def create_gossip

        end
end