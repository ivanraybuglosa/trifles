class CategoriesController < ApplicationController
  def index
    @status = params[:status]
    if (@status.nil?)
      categories = Category.joins(:words).where.not(words: { category_id: nil })
    elsif (@status == 'learned')
      categories = Category.joins(:lessons).where.not(lessons: { result: nil })
    elsif (@status == 'unlearned')
      categories = Category.joins(:lessons, :words).where.not(words: { category_id: nil })
                            .where(lessons: { result: nil })
    end
    @categories = categories.group(:id).page(params[:page]).per(6).order(created_at: :desc)
    @lesson = Lesson.new  
  end
end
