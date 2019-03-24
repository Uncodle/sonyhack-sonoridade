class Api::V1::QuestionsController < ActionController::Base

  def questions_field
    @questions = Question.where(field_id: params[:field_id]).order(:rating)
    render json: { questions: @questions.as_json(:include => :answers) } 
  end

  def questions_musical
    @questions = Question.where(musical_gender_id: params[:field_id]).order(:rating)
    render json: { questions: @questions.as_json(:include => :answers) } 
  end

end