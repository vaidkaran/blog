class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by id: params[:id]
    @comment = Comment.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      flash[:notice] = 'You successfully created a post'
      redirect_to(action: 'show', id: @post.id)
    else
      flash[:notice] = 'Couldn\'t create a post. Something went wrong.'
      render 'new'
    end
  end



  private
  def posts_params
    params.require(:post).permit(:title, :body)
  end
end
