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
    @order = Order.new
  end
  
  def canciones
    @playlist = Playlist.new
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

  def cancel_order

    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|

      format.html { redirect_to pedidos_path, notice: 'Orden fue cancelada.' }

      format.json { head :no_content }

    end

  end  

  def add_order

    @order = Order.new(order_params)
    #@order.client = current_client

    respond_to do |format|
      if @order.save
        format.html { redirect_to pedidos_path, notice: 'Su orden fue recibida, gracias!' }
        format.json { render :show, status: :ok, location: @order }

      else
        format.html { redirect_to pedidos_path }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end

  end

  def cancel_song

    @playlist = Playlist.find(params[:id])
    @playlist.destroy

    respond_to do |format|

      format.html { redirect_to canciones_path, notice: 'Canción fue cancelada.' }

      format.json { head :no_content }

    end

  end  

  def add_song

    @playlist = Playlist.new(playlist_params)

    respond_to do |format|
      if @playlist.save
        format.html { redirect_to canciones_path, notice: 'Su pedido de canción fue recibida, gracias!' }
        format.json { render :show, status: :ok, location: @playlist }

      else
        format.html { redirect_to canciones_path }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:fec_reserva, :can_persona, :comentario, :event_id, :client_id, :room_id, :shop_id)
    end
    def order_params
      params.require(:order).permit(:reservation_id, :product_id, :cantidad)
    end
    def playlist_params
      params.require(:playlist).permit(:play_order, :reservation_id, :song_id)
    end


end
