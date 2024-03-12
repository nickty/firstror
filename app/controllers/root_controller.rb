class RootController < ApplicationController

    def about  
        render "about"
    end

    def mizan
        puts "mizan"
        render "mizan"
    end 
    
end
