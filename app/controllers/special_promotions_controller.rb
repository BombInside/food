class SpecialPromotionsController < ApplicationController
  before_action :set_special_promotion, only: [:show, :edit, :update, :destroy]

  # GET /special_promotions
  # GET /special_promotions.json
  def index
    @special_promotions = SpecialPromotion.all
  end

  # GET /special_promotions/1
  # GET /special_promotions/1.json
  def show
  end

  # GET /special_promotions/new
  def new
    @special_promotion = SpecialPromotion.new
  end

  # GET /special_promotions/1/edit
  def edit
  end

  # POST /special_promotions
  # POST /special_promotions.json
  def create
    @special_promotion = SpecialPromotion.new(special_promotion_params)

    respond_to do |format|
      if @special_promotion.save
        format.html { redirect_to @special_promotion, notice: 'Special promotion was successfully created.' }
        format.json { render :show, status: :created, location: @special_promotion }
      else
        format.html { render :new }
        format.json { render json: @special_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_promotions/1
  # PATCH/PUT /special_promotions/1.json
  def update
    respond_to do |format|
      if @special_promotion.update(special_promotion_params)
        format.html { redirect_to @special_promotion, notice: 'Special promotion was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_promotion }
      else
        format.html { render :edit }
        format.json { render json: @special_promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_promotions/1
  # DELETE /special_promotions/1.json
  def destroy
    @special_promotion.destroy
    respond_to do |format|
      format.html { redirect_to special_promotions_url, notice: 'Special promotion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_promotion
      @special_promotion = SpecialPromotion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_promotion_params
      params.require(:special_promotion).permit(:prom_start_date, :prom_end_date, :prom_title, :old_price, :new_price, :user_id, :restoraunt_id)
    end
end
