class Api::V1::UsersController < ActionController::Base
  protect_from_forgery with: :null_session

  def new_user
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], 
                email: params[:email], password: params[:password], city: params[:city],
                state: params[:state], address: params[:address], birth_date: params[:birth_date],
                gender: params[:gender], field_id: params[:field_id], musical_gender_id: params[:musical_gender_id])
    if @user.save
      render json: { message: "Mulher cadastrada.", user_id: @user.id }
    else
      render json: { message: "Erro ao cadastrar" }
    end
  end

end