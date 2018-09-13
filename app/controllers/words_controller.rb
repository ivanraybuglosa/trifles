class WordsController < ApplicationController

  def index
    @lessons = current_user.lessons.page(params[:page]).per(6).order(created_at: :desc)
  end
end