class SingersController < ApplicationController
  before_action :set_singer, only: [:show, :edit, :update, :destroy]

  # GET /singers
  # GET /singers.json
  def index
    @singers = Singer.all
  end

  # GET /singers/1
  # GET /singers/1.json
  def show
  end

  # GET /singers/new
  def new
    @singer = Singer.new
  end

  # GET /singers/1/edit
  def edit
  end

  # POST /singers
  # POST /singers.json
  def create
    @singer = Singer.new(singer_params)

    respond_to do |format|
      if @singer.save
        format.html { redirect_to @singer, notice: 'Singer was successfully created.' }
        format.json { render :show, status: :created, location: @singer }
      else
        format.html { render :new }
        format.json { render json: @singer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /singers/1
  # PATCH/PUT /singers/1.json
  def update
    respond_to do |format|
      if @singer.update(singer_params)
        format.html { redirect_to @singer, notice: 'Singer was successfully updated.' }
        format.json { render :show, status: :ok, location: @singer }
      else
        format.html { render :edit }
        format.json { render json: @singer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /singers/1
  # DELETE /singers/1.json
  def destroy
    @singer.destroy
    respond_to do |format|
      format.html { redirect_to singers_url, notice: 'Singer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_singer
      @singer = Singer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def singer_params
      params.require(:singer).permit(:nom_singer)
    end
end
