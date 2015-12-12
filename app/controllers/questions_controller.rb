class QuestionsController < ApplicationController
    before_action :logged_in_user, onry: [:create]
    def create
        @question = current_user.questions.build(question_params)
        if @quetion.save
            flaeh[:success] = "Quetion created!"
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end
    
    private
    def quetion_params
       params.require(:quetion).permit(:content) 
    end
    
end
