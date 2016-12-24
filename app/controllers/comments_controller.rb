class CommentsController < ApplicationController
  def create
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:notice] = 'Comment successfully saved'
      redirect_to post_path(@post.id)
    else
      flash[:notice] = 'Could not save the comment. Something went wrong'
      render 'new'
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
