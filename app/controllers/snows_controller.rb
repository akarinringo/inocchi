class SnowsController < ApplicationController
<<<<<<< HEAD

    def new
        @snow = Snow.new
      end
    
      def create
        snow = Snow.new(snow_params)
        if snow.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def snow_params
        params.require(:snow).permit(:spot, :address, :image, :hp, :telephone)
      end

=======
    def index
        @snows = Snow.all
    end
>>>>>>> origin/master
end
