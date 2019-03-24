class Api::V1::QuestionsController < ActionController::Base
  protect_from_forgery with: :null_session

  def questions_field
    @questions = Question.where(field_id: params[:field_id]).order(:rating)
    render json: { questions: @questions.as_json(:include => :answers) } 
  end

  def questions_musical
    @questions = Question.where(musical_gender_id: params[:field_id]).order(:rating)
    render json: { questions: @questions.as_json(:include => :answers) } 
  end

  def new_question
    Question.create(title: params[:title], description: params[:description], 
    field_id: params[:field_id], musical_gender_id: params[:musical_gender_id])
    render json: { message: "Pergunta criada" }
  end

  def persona_question
    Question.create(title: params[:title], description: params[:description], 
    field_id: params[:field_id], musical_gender_id: params[:musical_gender_id],
    persona_id: params[:persona_id])
    render json: { message: "Pergunta criada" }
  end

  def my_questions
    @questions = Question.where(user_id: params[:user_id])
    render json: { questions: @questions.as_json(:include => :answers) }
  end

end