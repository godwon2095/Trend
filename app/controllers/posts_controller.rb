class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(set_params)
    respond_to do |format|
      if @post.save
        format.html{ redirect_to post_path(@post),
                    notice: "게시물이 성공적으로 작성되었습니다."}
      else
        format.html{ render :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(set_params)
        format.html{redirect_to post_path(@post),
                    notice: "게시물이 성공적으로 수정되었습니다."}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html{redirect_to root_path, notice: "게시물이 성공적으로 삭제되었습니다."}
    end
  end

  private
  def set_params
    params.require(:post).permit(:id, :title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def check_ownership!
    redirect_to root_path if @post.user.id != current_user.id
  end

end
