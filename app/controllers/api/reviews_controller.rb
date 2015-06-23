module Api
  class ReviewsController < ApplicationController
    def index
      @reviews = Review.all
      render json: @reviews    
    end

    def show
      @review = Review.find(params[:id])
      render json: @review    
    end  

    def create
      @review = Review.new(blog_params)

      if @review.save!
        render json: @review, :status => :created
      end
    end  

    def update
      @review = Review.find(params[:id])

      if @review.update!(blog_params) 
        render json: @review, :status => 200
      end
    end  

    def destroy
      @review = Review.find(params[:id])

      if @review.destroy! 
        render json: {}, :status => 200
      end
    end    

    private

    def blog_params
      params.require(:review).permit(:user_id, :text, :deleted)
    end    
            
  end
end