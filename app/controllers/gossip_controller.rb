require 'registrations_controller'
class GossipController < ApplicationController

    def show
        puts "show"
        puts session[:current_user_id]
        
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
    end
end
