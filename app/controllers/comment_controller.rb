class CommentController < ApplicationController
    def index
        @comments = Commentaire.all
    end

    def new
        puts "new"
        puts params
        @comments = Commentaire.new
    end

    def create
        puts "create"
        puts session[:current_user_id]
        @comments = Commentaire.new
        
    end
end
