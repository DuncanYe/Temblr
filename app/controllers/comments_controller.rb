class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params_comment)
    @comment.save
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to @post
  end

  private

  def params_comment
    params.require(:comment).permit(:name, :body)
  end

  # create
  # 1.建立comment，要先找到post，因為路由設定在post底下，讓comment歸屬於post
  # 2.建立comment
  # 3.save
  # 4.redirect

  # destroy
  # 1.刪除comment，要先找到post，因為路由設定在post底下，讓comment歸屬於post
  # 2.找到comment
  # 3.destroy
  # 4.redirect


end
