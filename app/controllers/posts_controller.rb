class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title: params[:title], description: params[:description])
    # @post = Post.find(params[:id])
    redirect_to "/posts/#{@post.id}"
  end

  # add create method here
end
