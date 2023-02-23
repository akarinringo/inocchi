class SnowsController < ApplicationController
    def index
        @snows = Snow.all
    end
end
