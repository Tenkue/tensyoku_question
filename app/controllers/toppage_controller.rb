class ToppageController < ApplicationController
  def index
    @questions = Question.order("counter DESC")
  end
end