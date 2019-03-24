class Api::V1::PersonasController < ActionController::Base
  protect_from_forgery with: :null_session

  def new_persona
    @persona = Persona.new(first_name: params[:first_name], last_name: params[:last_name], 
                email: params[:email], password: params[:password], city: params[:city],
                state: params[:state], address: params[:address], birth_date: params[:birth_date],
                gender: params[:gender], field_id: params[:field_id], musical_gender_id: params[:musical_gender_id],
                testimony: params[:testimony], trajectory: params[:testimony])
    if @persona.save
      render json: { message: "Fada madrinha cadastrada.", persona_id: @persona.id }
    else
      render json: { message: "Erro ao cadastrar"}
    end
  end

end