class CategoriesController < ApplicationController
  def index
    @status = params[:status]
    if (@status.nil?)
      @categories = Category.joins(:words).where.not(words: { category_id: nil }).group(:id).page(params[:page]).per(6).order(created_at: :desc)
    elsif (@status == 'learned')
      @categories = Category.joins(:lessons).where.not(lessons: { result: nil }).group(:id).page(params[:page]).per(6).order(created_at: :desc)
    elsif (@status == 'unlearned')
      @categories = Category.includes(:lessons, :words).where.not(words: { category_id: nil }).where(lessons: { result: nil }).page(params[:page]).per(6).order(created_at: :desc)
    end
    @lesson = Lesson.new  
  end
end
