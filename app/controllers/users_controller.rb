class UsersController < ApplicationController

  def show # 追加
   @user = User.find(params[:id])
   @questions = @user.questions

  end

    
  def new
    @user = User.new
  end
  
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: 'メッセージを編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end

    
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
