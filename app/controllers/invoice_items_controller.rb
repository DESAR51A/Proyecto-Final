class InvoiceItemsController < ApplicationController
  before_action :set_invoice_item, only: [:show, :edit, :update, :destroy]
  before_action :set_invoice_item
  
  respond_to :html

  # GET /invoice_items
  # GET /invoice_items.json
  def index
    @invoice_items = @invoice.invoice_items
  end

  # GET /invoice_items/1
  # GET /invoice_items/1.json
  def show
    
    respond_with(@invoice, @invoice_items)
  end

  # GET /invoice_items/new
  def new
    @invoice_item = @invoice.invoice_items.new
    respond_with(@invoice, @invoice_items)
  end

  # GET /invoice_items/1/edit
  def edit
  end

  # POST /invoice_items
  # POST /invoice_items.json
  def create
    
    
    @invoice_item = @invoice.invoice_item.new(invoice_item_params)
    @invoice_item.save
    respond_with(@invoice)

  end

  # PATCH/PUT /invoice_items/1
  # PATCH/PUT /invoice_items/1.json
  def update
    
    @invoice_item.update(@invoice_item)
    respond_with(@invoice)
    
  end

  # DELETE /invoice_items/1
  # DELETE /invoice_items/1.json
  def destroy
    @invoice_item.destroy
    respond_with(@invoice)
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_item
      @invoice_item = InvoiceItem.find(params[:id])
    end
    
    def set_invoice_item
      @invoice = Invoice.find(params[:invoice_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_item_params
      params.require(:invoice_item).permit(:cod_producto, :precio_unit, :descuento, :cantidad, :costo, :invoice_id)
    end
end
