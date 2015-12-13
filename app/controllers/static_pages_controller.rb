class StaticPagesController < ApplicationController
  def home
#    @quetion = current_user.quetions.build if logged_in?
    if logged_in?
      @question = current_user.questions.build
#      @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc)
#      @questions = current_user.questions
      @questions = Question.all
      
      @categorys = Category.all

    end
  end

end
