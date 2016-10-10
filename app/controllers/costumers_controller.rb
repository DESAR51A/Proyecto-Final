class CostumersController < ApplicationController
  
  before_filter :authenticate_client!, only: [:reservas, :pedidos, :cancel_reservation]

  def home
  end
  
  def eventos
  end
  
  def locales
  end
  
  def contacto
  end

  def reservas
    @reservation = Reservation.new
  end

  def pedidos
  end

  def cancel_reservation

    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    respond_to do |format|

      format.html { redirect_to reservas_path, notice: 'Reserva fue cancelada.' }

      format.json { head :no_content }

    end

  end  

  def add_reservation

    @reservation = Reservation.new(reservation_params)
    @reservation.client = current_client

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to reservas_path, notice: 'Su reserva fue recibida, gracias!' }
        format.json { render :show, status: :ok, location: @reservation }

      else
        format.html { redirect_to reservas_path }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:fec_reserva, :can_persona, :comentario, :event_id, :client_id, :room_id, :shop_id)
    end



end
