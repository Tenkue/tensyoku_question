class PostsController < ApplicationController
  #新規投稿
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end
#投稿詳細
  def show
  end
#投稿編集
  def edit
  end

  def update
  end
#投稿削除
  def destroy
  end

  private
  
  def post_params
    params.require(:post).permit(
      :interview_date,
      :text,
      :user_id,
      :place_id,
      :style_id,
      question_ids: []).merge(user_id: current_user.id)
  end
end
