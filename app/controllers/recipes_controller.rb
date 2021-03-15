class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      binding.pry
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image, :dish_name, :catch_copy,:dish_portion_id,
      :step_1, :step_2, :step_3, :step_4, :step_5, :dish_point,
      dish_ingredient_ids:[], seasoning_ids:[]).merge(user_id: current_user.id)
  end
end
