class RegistrationsController < ApplicationController

    def index
    puts "index"
    end

    def new
        puts "new"
        @user = User.new
    end

    def create
        puts "create"
        @user = User.new

        redirect_to('/')

    end
end
