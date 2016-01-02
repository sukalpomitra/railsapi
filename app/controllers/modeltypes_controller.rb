class ModeltypesController < ApplicationController
  before_action :set_modeltype, only: [:show, :edit, :update, :destroy]

  # GET /modeltypes
  # GET /modeltypes.json
  def index
    @modeltypes = Modeltype.all
  end

  # GET /modeltypes/1
  # GET /modeltypes/1.json
  def show
  end

  # GET /modeltypes/new
  def new
    @modeltype = Modeltype.new
  end

  # GET /modeltypes/1/edit
  def edit
  end

  # POST /modeltypes
  # POST /modeltypes.json
  def create
    @modeltype = Modeltype.new(modeltype_params)

    respond_to do |format|
      if @modeltype.save
        format.html { redirect_to @modeltype, notice: 'Modeltype was successfully created.' }
        format.json { render :show, status: :created, location: @modeltype }
      else
        format.html { render :new }
        format.json { render json: @modeltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modeltypes/1
  # PATCH/PUT /modeltypes/1.json
  def update
    respond_to do |format|
      if @modeltype.update(modeltype_params)
        format.html { redirect_to @modeltype, notice: 'Modeltype was successfully updated.' }
        format.json { render :show, status: :ok, location: @modeltype }
      else
        format.html { render :edit }
        format.json { render json: @modeltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modeltypes/1
  # DELETE /modeltypes/1.json
  def destroy
    @modeltype.destroy
    respond_to do |format|
      format.html { redirect_to modeltypes_url, notice: 'Modeltype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modeltype
      @modeltype = Modeltype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modeltype_params
      params.require(:modeltype).permit(:name, :model_type_slug, :model_type_code, :integer, :base_price)
    end
end
