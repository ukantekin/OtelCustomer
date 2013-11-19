class OtelsController < ApplicationController
  before_action :set_otel, only: [:show, :edit, :update, :destroy]

  # GET /otels
  # GET /otels.json
  def index
    @otels = Otel.all
  end

  # GET /otels/1
  # GET /otels/1.json
  def show
  end

  # GET /otels/new
  def new
    @otel = Otel.new
  end

  # GET /otels/1/edit
  def edit
  end

  # POST /otels
  # POST /otels.json
  def create
    @otel = Otel.new(otel_params)

    respond_to do |format|
      if @otel.save
        format.html { redirect_to @otel, notice: 'Otel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @otel }
      else
        format.html { render action: 'new' }
        format.json { render json: @otel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otels/1
  # PATCH/PUT /otels/1.json
  def update
    respond_to do |format|
      if @otel.update(otel_params)
        format.html { redirect_to @otel, notice: 'Otel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @otel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otels/1
  # DELETE /otels/1.json
  def destroy
    @otel.destroy
    respond_to do |format|
      format.html { redirect_to otels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otel
      @otel = Otel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otel_params
      params.require(:otel).permit(:Oname, :Oemail, :Ophone, :Oadress)
    end
end
