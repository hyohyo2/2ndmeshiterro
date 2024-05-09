class PostImagesController < ApplicationController
  # 画像投稿機能
  def new
    @post_image = PostImage.new
  end
  # 画像登録機能
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_image_path
  end

  def index
  end

  def show
  end
  
  private
  # 投稿データのストロングパラメーター
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
    
  end
  
end
