class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(
      title: params[:title],
      content: params[:content])
    @post.save
    redirect_to posts_path
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to :posts
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to :posts
  end

end
