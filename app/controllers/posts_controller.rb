class PostsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @user  = current_user
    @post = @user.posts.create(params[:post])
    redirect_to posts_path  
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
