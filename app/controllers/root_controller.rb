class RootController < ApplicationController

    def about  
        render "about"
    end

    def mizan
        puts "mizan"
        render "mizan"
    end 

    def index
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
    
end
