class CommentsController < ApplicationController
  def create
    @todo = Todo.find(comment_params[:todo_id])
    @comment = @todo.comments.new(comment_params)
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :todo_id)
    end
end
