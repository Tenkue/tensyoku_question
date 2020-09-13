class PostsController < ApplicationController
  before_action :set_post, only: [:show]
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
    @style = Style.find(@post.style_id)
    @place = Place.find(@post.place_id)
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

  def set_post
    @post = Post.find(params[:id])
  end

end
