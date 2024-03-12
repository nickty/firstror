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
    
end
