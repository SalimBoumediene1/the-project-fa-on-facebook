require 'registrations_controller'
class GossipController < ApplicationController
    def index
        puts "index"
        @gossips = Gossip.all
        
    end

    def show
        puts "show"
        @gossips = Gossip.all
        
    end

    def new
    puts "new"
      @gossip = Gossip.find(session[:current_user_id])
    end

    def create
        puts "create"
        @gossip = Gossip.new
        @gossip.title = params[:title]
        @gossip.content = params[:content]
        @gossip.user = User.find(session[:current_user_id])
        @gossip.save
        redirect_to gossip_index_path
    end

    def destroy
        puts "des"
        puts params
        @gossip = Gossip.find_by(user: session[:current_user_id])
        @gossip.destroy
        redirect_to gossip_path
    end

end
