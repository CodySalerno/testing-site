class PrebuiltsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    def index
        @prebuilts = Prebuilt.all
        render :index
    end

    def show
        @prebuilt = Prebuilt.find(params[:id])
        render :show
    end

    def require_permission
        if Prebuilt.find(params[:id]).creator != current_user
          flash[:error] = 'You do not have permission to do that.'
          redirect_to prebuilts_path
        end
      end

end
