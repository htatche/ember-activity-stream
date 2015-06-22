module Api
  class BlogsController < ApplicationController
    # def index
    #   @blogs = Blog.all
    #   render json: @blogs    
    # end

    # def show
    #   @blog = Blog.find(params[:id])
    #   render json: @blog    
    # end  

    def create
      @blog = Blog.new(blog_params)

      if @blog.save 
        render json: @blog, :status => :created
      end
    end  

    private

    def blog_params
      params.require(:blog).permit(:user_id, :title, :url)
    end    
            
  end
end