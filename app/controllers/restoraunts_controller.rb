class RestorauntsController < ApplicationController
  before_action :set_restoraunt, only: [:show, :edit, :update, :destroy]

  # GET /restoraunts
  # GET /restoraunts.json
  def index
    @restoraunts = Restoraunt.all
  end

  # GET /restoraunts/1
  # GET /restoraunts/1.json
  def show
  end

  # GET /restoraunts/new
  def new
    @restoraunt = Restoraunt.new
  end

  # GET /restoraunts/1/edit
  def edit
  end

  # POST /restoraunts
  # POST /restoraunts.json
  def create
    @restoraunt = Restoraunt.new(restoraunt_params)

    respond_to do |format|
      if @restoraunt.save
        format.html { redirect_to @restoraunt, notice: 'Restoraunt was successfully created.' }
        format.json { render :show, status: :created, location: @restoraunt }
      else
        format.html { render :new }
        format.json { render json: @restoraunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restoraunts/1
  # PATCH/PUT /restoraunts/1.json
  def update
    respond_to do |format|
      if @restoraunt.update(restoraunt_params)
        format.html { redirect_to @restoraunt, notice: 'Restoraunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @restoraunt }
      else
        format.html { render :edit }
        format.json { render json: @restoraunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restoraunts/1
  # DELETE /restoraunts/1.json
  def destroy
    @restoraunt.destroy
    respond_to do |format|
      format.html { redirect_to restoraunts_url, notice: 'Restoraunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restoraunt
      @restoraunt = Restoraunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restoraunt_params
      params.require(:restoraunt).permit(:user_id, :reservation_id, :title, :phone, :w_time_start, :w_time_end, :wr_time_start, :wr_time_end)
    end
end
