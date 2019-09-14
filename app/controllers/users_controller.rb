class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @post_imagesにはそのユーザ(@user)に紐づいた投稿(.post_images)のみを渡すことができる
    @post_images = @user.post_images.page(params[:page]).reverse_order
  end
end
