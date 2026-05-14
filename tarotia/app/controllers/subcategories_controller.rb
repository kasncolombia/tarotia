class SubcategoriesController < ApplicationController
  def show
    @category = Category.find_by!(slug: params[:category_slug])
    @subcategory = @category.subcategories.find_by!(slug: params[:slug])
  end
end
