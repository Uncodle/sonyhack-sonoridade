class Api::V1::AnswersController < ActionController::Base
  protect_from_forgery with: :null_session

  def new_answer
    Answer.create(question_id: params[:question_id])
    render json: { message: "Resposta criada com sucesso"  }
  end

end