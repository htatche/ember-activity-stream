module Api
  class BlogsController < ApplicationController
    def index
      @blogs = Blog.all
      render json: @blogs    
    end

    def show
      @blog = Blog.find(params[:id])
      render json: @blog    
    end  

    def create
      @blog = Blog.new(blog_params)

      if @blog.save!
        render json: @blog, :status => :created
      end
    end  

    def update
      @blog = Blog.find(params[:id])

      if @blog.update!(blog_params) 
        render json: @blog, :status => 200
      end
    end  

    def destroy
      @blog = Blog.find(params[:id])

      if @blog.destroy! 
        render json: {}, :status => 200
      end
    end    

    private

    def blog_params
      params.require(:blog).permit(:user_id, :name, :url, :deleted)
    end    
            
  end
end