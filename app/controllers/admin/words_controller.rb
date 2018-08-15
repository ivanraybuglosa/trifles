class Admin::WordsController < ApplicationController
  def index
    @words = Word.where("category_id = ?", params[:category_id])
  end

  def show

  end
end
