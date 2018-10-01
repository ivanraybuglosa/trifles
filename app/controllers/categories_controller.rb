class CategoriesController < ApplicationController
  def index
    if(params[:status].nil?)
      @categories = Category.joins(:words).where.not(words: { category_id: nil })
                            .page(params[:page]).per(6).order(created_at: :desc)
      @status = params[:status]
    elsif(params[:status] == 'learned')
      @categories = Category.joins(:lessons).where.not(lessons: { result: nil })
                            .page(params[:page]).per(6).order(created_at: :desc)
      @status = params[:status]
    elsif(params[:status] == 'unlearned')
      @categories = Category.includes(:lessons, :words).where.not(words: { category_id: nil }).where(lessons: { result: nil })
                            .page(params[:page]).per(6).order(created_at: :desc)
      @status = params[:status]
    end
    @lesson = Lesson.new  
  end
end
