class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @user = User.find(params[:id])
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render new
    end
  end

  def show
    @product = Product.find(params[:id])
    @post = Post.new
    @posts = @product.posts
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :category_id, :image)
  end

end
