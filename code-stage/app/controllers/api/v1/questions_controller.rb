class Api::V1::QuestionsController < ActionController::Base
  # protect_from_forgery with: :null_session

  def get_questions
    @user = User.find(params[:user_id])
    
  end

end