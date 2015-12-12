class StaticPagesController < ApplicationController
  def home
#    @quetion = current_user.quetions.build if logged_in?
    if logged_in?
      @quetion = current_user.quetions.build
#      @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc)
    end
  end
  
end
