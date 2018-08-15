class Admin::CategoriesController < AdminController
  def new
    @categories = Category.new
  end

  def create

  end
  
  def index
    @categories = Category.all.page(params[:page]).per(5)
  end

  def destroy
  end

  def edit
    @categories = Category.find(params[:id])
  end
end
