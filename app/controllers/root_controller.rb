class RootController < ApplicationController

    def about  
        render "about"
    end

    def mizan
        puts "mizan"
        render "mizan"
    end 

    def index
        @post = Post.all
        render "index"
    end

    def api 
        @response = {
            :status => 200,
            :message => "Bismillah"
        }
        render json: @response
    end

    def user 
        render json: params
    end

    def add 
        @post = Post.new
        @post.title = params[:title]
        @post.description = params[:description]
        @post.save
        @response = {
            :status => 200,
            :message => "Post successfull"
        }
        render json: @response
    end

    def delete
        @post = Post.find(params[:id])
        @post.destroy
        @posts = Post.all
        render 'index'
    end

    
end
