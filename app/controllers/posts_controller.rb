class PostsController < ApplicationController
  #新規投稿
  def new
    @post = Post.new
    @style = Style.new
    @place = Place.new
    @question = Question.new
  end

  def create
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
end
