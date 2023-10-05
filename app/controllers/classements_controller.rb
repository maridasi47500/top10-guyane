class ClassementsController < ApplicationController
  before_action :set_classement, only: %i[ edit update destroy ]
  before_action :set_this_classement, only: %i[ show  ]

  # GET /classements or /classements.json
  def index
    @classements = Classement.all
  end

  # GET /classements/1 or /classements/1.json
  def show
  end

  # GET /classements/new
  def new
    @classement = Classement.new
    @x=1
    10.times do
      @classement.hits.new(order: @x)
      @x+=1
    end
  end

  # GET /classements/1/edit
  def edit
  end

  # POST /classements or /classements.json
  def create
    @classement = Classement.new(classement_params)

    respond_to do |format|
      if @classement.save
        format.html { redirect_to monclassement_url(date: l(@classement.date, format: :long).parameterize), notice: "Classement was successfully created." }
        format.json { render :show, status: :created, location: @classement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @classement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classements/1 or /classements/1.json
  def update
    respond_to do |format|
      if @classement.update(classement_params)
        format.html { redirect_to monclassement_url(date: l(@classement.date, format: :long).parameterize), notice: "Classement was successfully updated." }
        format.json { render :show, status: :ok, location: @classement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classements/1 or /classements/1.json
  def destroy
    @classement.destroy

    respond_to do |format|
      format.html { redirect_to classements_url, notice: "Classement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classement
      @classement = Classement.find(params[:id])
    end
    def set_this_classement
      @classement = Classement.findbydate(params[:date])
    end

    # Only allow a list of trusted parameters through.
    def classement_params
      params.require(:classement).permit(:date,:hits_attributes=>{})
    end
end
