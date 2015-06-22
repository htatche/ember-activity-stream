module Api
  class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      render json: @user    
    end  

    private

    def blog_params
      params.require(:blog).permit(:user_id, :name, :url)
    end    
            
  end
end