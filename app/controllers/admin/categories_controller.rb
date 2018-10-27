class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
  end

  # def new
  # end

  def create
    @new_category = Category.new(category_params)

    if @new_category.save
      redirect_to [:admin, :categories]
    else
      render :index
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)

    # INFO:
    # def person_params
    #   params.require(:person).permit(:name, :age)
    # end

    # The params.require function works by taking this params hash:
    # params{:question => {:question => "1", :answer => "5"}}
  end
end
