class CustomsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    def new
        @custom = Custom.new
      end
    def create
        @custom = Custom.new(params.require(:custom).permit(:built_in_game, :color, :crayon_walls, :entertainment_tablets, :manufacturer, :price, :size))
        if @custom.save
            flash[:success] = "new custom jet created"
            redirect_to customs_url
        else
            flash.now[:error] = 'custom jet creation failed'
            render :new, status: :unprocessable_entity
        end
    end
    def index
        @customs = Custom.all
    end
end
