class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:words).where.not(words: { category_id: nil })
                          .page(params[:page]).per(6).order(created_at: :desc)
    @lesson = Lesson.new
  end
end
