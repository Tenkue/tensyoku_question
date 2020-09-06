class PostsController < ApplicationController
  #新規投稿
  def new
    @post = Post.new
    # @post.build_style
    # @post.build_place
    # @questions = Question.all
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      puts '投稿しました'
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

  def post_params
    params.require(:post).permit(
      :interview_date,
      :user_id,
      :place_id,
      :style_id,
      # style_attributes: [:id,
      #                    :business_form],
      # place_attributes: [:id,
      #                    :work_location],
      question_ids: [])
  end
end
