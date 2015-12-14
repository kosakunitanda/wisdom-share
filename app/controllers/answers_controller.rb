class AnswersController < ApplicationController

    before_action :set_answer, onry: [:edit, :update, :destroy]

    def create
        @answer = Answer.new(answer_params)
        if @answer.save
          redirect_to root_path , notice: 'メッセージを保存しました'
        else
          # メッセージが保存できなかった時
          @answers = Answer.all
          flash.now[:alert] = "メッセージの保存に失敗しました。"
          render 'index'
        end
      end
    
      def edit
      end
    
      def update
        if @answer.update(answer_params)
          # 保存に成功した場合はトップページへリダイレクト
          redirect_to root_path , notice: 'メッセージを編集しました'
        else
          # 保存に失敗した場合は編集画面へ戻す
          render 'edit'
        end
      end
      
      def destroy
        @answer.destroy
        redirect_to root_path, notice: 'メッセージを削除しました'
      end
  
    
    private
    def answer_params
       params.require(:answer).permit(:content) 
    end
    def set_answer
        @quesion = Question.find(params[:id])
        #@answers = Answer.find(quesion_id => params[:id])
        @answers = Answer.all
    end



end
