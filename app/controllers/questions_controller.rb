class QuestionsController < ApplicationController
    before_action :logged_in_user, onry: [:create]
    def create
        @question = current_user.questions.build(question_params)
        if @question.save
            flash[:success] = "Question created!"

            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end
    
    private
    def question_params
       params.require(:question).permit(:content) 
    end
    
end
