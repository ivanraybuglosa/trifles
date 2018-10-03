class WordsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @categories = current_user.categories

    if params[:filter].present?
      category = Category.find(params[:filter])
      @answers = category.answers.page(params[:page]).per(6).order(created_at: :desc)
    else
      @answers = @user.answers.page(params[:page]).per(6).order(created_at: :desc)
    end
  end
end