class AnswersController < ApplicationController
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @category = Category.find_by(id: @lesson.category_id)  
    @answer = @lesson.answers.build
    @lesson_word = (@category.words - @lesson.words).first
      #if all word has been answered, redirect to lesson show
      if @lesson_word.nil?
        redirect_to lesson_url(@lesson.id)
      end
    
  end

  def create
    lesson = Lesson.find(params[:lesson_id])
    @answer = lesson.answers.build(answer_params)
      if @answer.save
        redirect_to new_lesson_answer_url(lesson)
      else
        'new'
      end
  end

  private

  def answer_params
    params.require(:answer).permit(:word_id, :choice_id, :lesson_id)
  end
end
