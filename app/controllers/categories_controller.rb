class CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories, only: [:id, :name]
  end
end
