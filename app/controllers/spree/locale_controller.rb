module Spree
  class LocaleController < Spree::StoreController
    def index
      render :index, layout: false
    end

    def set
      session[:locale] = params[:locale]

      respond_to do |format|
        format.json { render json: true }
        format.html { redirect_to root_path }
      end
    end
  end
end
