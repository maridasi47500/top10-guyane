class HitsController < ApplicationController
  before_action :set_hit, only: %i[ show edit update destroy ]

  # GET /hits or /hits.json
  def index
    @hits = Hit.all
  end

  # GET /hits/1 or /hits/1.json
  def show
  end

  # GET /hits/new
  def new
    @hit = Hit.new
  end

  # GET /hits/1/edit
  def edit
  end

  # POST /hits or /hits.json
  def create
    @hit = Hit.new(hit_params)

    respond_to do |format|
      if @hit.save
        format.html { redirect_to hit_url(@hit), notice: "Hit was successfully created." }
        format.json { render :show, status: :created, location: @hit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hits/1 or /hits/1.json
  def update
    respond_to do |format|
      if @hit.update(hit_params)
        format.html { redirect_to hit_url(@hit), notice: "Hit was successfully updated." }
        format.json { render :show, status: :ok, location: @hit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hits/1 or /hits/1.json
  def destroy
    @hit.destroy

    respond_to do |format|
      format.html { redirect_to hits_url, notice: "Hit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hit
      @hit = Hit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hit_params
      params.require(:hit).permit(:classement_id, :title, :artist, :image, :order,:hits_attributes=>{})
    end
end
