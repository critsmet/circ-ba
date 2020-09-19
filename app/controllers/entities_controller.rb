class EntitiesController < ApplicationController

  def email_confirmation
    entity = Entity.find_by(confirmation_token: params[:token])
    entity.confirmed = true
    if entity.save
      redirect_to "http://localhost:3001/messages/email-confirmation/approved"
    else
      redirect_to "http://localHost:3001/messages/email-confirmation/denied"
    end

  end

  #combine the show and show_public methods togeher
  # def show
  #   @entity = Entity.find(params[:id])
  #   render_entity
  # end
  #
  # def create
  #   @entity = Entity.create(entity_params)
  #   render_entity
  # end
  #
  # def login
  #   @entity = Entity.find_by(handle: login_params[:handle])
  #   if @entity.authenticate(login_params[:password])
  #     render_entity
  #   end
  # end

  private

  # def render_entity
  #   render json: EntitySerializer.new(@entity)
  # end
  #
  # def login_params
  #   params.require(:form).permit(:handle, :password)
  # end
  #
  # def entity_params
  #   params.require(:entity).permit(:name, :entity_type, :handle, :email, :password)
  # end
end
