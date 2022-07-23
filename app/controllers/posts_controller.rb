class PostsController < ApplicationController


  def new
    @product = Product.find(params[:product_id])
    @post = Post.new
  end

  def create
    @product = Product.find(params[:product_id])
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def post_params
    params.require(:post).permit(:store_name, :price, :comment).merge(user_id: current_user.id, product_id: @product.id )
  end

end
