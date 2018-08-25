class CategoriesController < ApplicationController
  def index
    @categories = Category.all.page(params[:page]).per(6).order(created_at: :desc)
    @lesson = Lesson.new
  end
end
