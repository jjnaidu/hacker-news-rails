class CommentsController < ApplicationController
  def index
  end
  
  def new
    @comment = current_user.comments.new
    @post = current_user.posts.new
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to  "/posts/#{@post.id}/comments"
    else
      redirect_to new_post_comment_path
    end
  end

  private

    def comment_params
      params.require(:comments).permit(:comment, :user_id, :post_id)
    end
end
