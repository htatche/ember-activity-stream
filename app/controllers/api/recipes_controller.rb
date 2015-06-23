module Api
  class RecipesController < ApplicationController
    def index
      @recipies = Recipe.all
      render json: @recipies    
    end

    def show
      @recipe = Recipe.find(params[:id])
      render json: @recipe    
    end  

    def create
      @recipe = Recipe.new(blog_params)

      if @recipe.save!
        render json: @recipe, :status => :created
      end
    end  

    def update
      @recipe = Recipe.find(params[:id])

      if @recipe.update!(blog_params) 
        render json: @recipe, :status => 200
      end
    end  

    def destroy
      @recipe = Recipe.find(params[:id])

      if @recipe.destroy! 
        render json: {}, :status => 200
      end
    end    

    private

    def blog_params
      params.require(:recipe).permit(:user_id, :name, :text, :deleted)
    end    
            
  end
end