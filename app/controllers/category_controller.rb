class CategoryController < ApplicationController
  def new
    @category = Category.new
  end
  
  def index
    @categorys = Category.all
end
end
