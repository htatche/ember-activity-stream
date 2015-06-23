module Api
  class ActivitiesController < ApplicationController

    def index
      @activities = Activity.all
      render json: @activities    
    end

    def create
      @activity = Activity.new(activity_params)

      if @activity.save!
        render json: @activity, :status => :created
      end
    end   

    private

    def activity_params
      params.require(:activity).permit(:user_id, :blog_id, :recipe_id, :review_id, :action, :created_at)
    end    
            
  end
end