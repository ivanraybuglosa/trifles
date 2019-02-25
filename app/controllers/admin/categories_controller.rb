class Admin::CategoriesController < AdminController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
      if @category.save
        flash[:success] = 'A new category has been added.' 
        redirect_to admin_categories_url
      else
        render 'new'
      end
  end
  
  def index
    @categories = Category.all.page(params[:page]).per(10).order(created_at: :desc)
  end

  def destroy
    @category = Category.find(params[:id]).destroy
    redirect_to admin_categories_url
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find_by(id: params[:id])
      if @category.update_attributes(category_params)
        flash[:info] = 'Successfully updated category.'
        redirect_to admin_categories_url
      else
        render 'edit'
      end
  end

  private

  def category_params
    params.require(:category).permit(:title, :description)
  end
end
