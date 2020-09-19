class PostsController < ApplicationController
  before_action :set_post, only: [:show,:edit,:update,:destroy]
  #登校一覧
  def index
    @posts = Post.all
  end
  #新規投稿
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      #チェックされた質問のカウントを一つ増やす
      @post.counter
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
    if @post.update(post_params)
      redirect_to  post_path(@post), notice:"投稿内容を編集しました！"
    else
      render :edit
    end
  end
#投稿削除
  def destroy
    @post.destroy
    flash[:success] = '投稿を削除しました！'
    redirect_to root_path
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
