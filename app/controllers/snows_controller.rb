class SnowsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

    def new
        @Snow = Snow.new
    end
    

    def create
        snow = Snow.new(snow_params)
        snow.user_id = current_user.id
        if snow.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end
    

    def index
        @snows = Snow.all
    end

    def show
        @Snow = Snow.find(params[:id])
    end

    def edit
        @Snow = Snow.find(params[:id])
    end

    def update
        snow = Snow.find(params[:id])
       
        if snow.save
            redirect_to :action => "index"
          else
            redirect_to :action => "new"
        end
    end

    def destroy
        snow = Snow.find(params[:id])
        snow.destroy
        redirect_to action: :index
    end

   

    private
      def snow_params
        params.require(:snow).permit(:spot, :address, :image, :hp, :telephone, :lat, :lng)
      end


   

end
