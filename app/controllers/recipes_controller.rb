class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :edit, :update]

  def index
    @top_recipe = Recipe.find(Like.group(:recipe_id).order('count(recipe_id) desc').limit(1).pluck(:recipe_id))
    @recipe = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
    @comments = @recipe.comments.includes(:user)
  end

  def search
    @keyword = params[:keyword]
    @recipes = Recipe.search(params[:keyword])
  end

  def tag_search
    @ingredient = DishIngredient.find(params[:id])
    @recipes = params[:id].present? ? DishIngredient.find(params[:id]).recipes : Recipe.all
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if current_user.id == @recipe.user_id
      @recipe.update(recipe_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if current_user.id == @recipe.user_id
      @recipe.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image, :dish_name, :catch_copy, :dish_portion_id,
      :step_1, :step_2, :step_3, :step_4, :step_5, :season_id, :genre_id, :dish_point,
      dish_ingredient_ids:[], seasoning_ids:[]).merge(user_id: current_user.id)
  end
end
