require 'registrations_controller'
class GossipController < ApplicationController

    def show
        puts "show"
        @user_id = session[:current_user_id]
        @gossips = Gossip.all
        
    end

    def new
    puts "new"
      @gossip = Gossip.new
    end

    def create
        puts "create"
        @gossip = Gossip.new
        @gossip.title = params[:title]
        @gossip.content = params[:content]
        @gossip.user = User.find(session[:current_user_id])
        @gossip.save
        redirect_to gossip_path(session[:current_user_id])
    end
end
