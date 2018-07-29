class CommentsController < ApplicationController
before_action :authenticate_user!
before_action :check_ownership!, only: [:destroy]

  def create
    @new_comment = Comment.new(content: params[:comment][:content],
                              image: params[:comment][:image],
                              post_id: params[:post_id],
                              user_id: current_user.id)
    @new_comment.save
    @post = @new_comment.post

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  # def set_params
  #   params.require(:comment).permit(:content, :image, :post_id, :user_id)
  # end

  def check_ownership!
    @comment = Comment.find(params[:id])
    redirect_to root_path if @comment.user.id != current_user.id
  end
end
