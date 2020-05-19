class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  
  def create
    Post.new(post_params)
    redirect_to posts_path
  end

  
  private
    
    def post_params
      params.require(:post).permit(:body)
    end
end
