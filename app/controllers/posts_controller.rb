class PostsController < ApplicationController
  def create
    if post = Post.create(post_params)
      redirect_to "/products/#{post.product.id}"
    else
      render product_path
    end
  end

  def post_params
    params.require(:post).permit(:store_name, :price, :comment).merge(user_id: current_user.id, product_id: params[:product_id])
  end

end
