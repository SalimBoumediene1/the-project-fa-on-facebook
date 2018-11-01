class LikeController < ApplicationController
    def index
        @likes = Like.all
    end

    def new
        @like = Like.new
    end

    def create
        
    end
end
