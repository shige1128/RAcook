class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create

  def create
    Comment.create(comment_params)
    redirect_to "/recipes/#{comment.recipe.id}"
  end

  private

  def comment_params
    params.require(:cmment).permit(:text).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end
