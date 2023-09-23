class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = current_user.posts.new
  end
  
  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to :root
    else
      render :new
    end
  end


  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
  

end
