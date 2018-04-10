class TacosController < ApplicationController
  before_action :set_taco, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /tacos
  # GET /tacos.json
  def index
    @tacos = Taco.all
  end

  # GET /tacos/1
  # GET /tacos/1.json
  def show
  end

  # GET /tacos/new
  def new
    @taco = Taco.new
  end

  # GET /tacos/1/edit
  def edit
    # TODO: allow users to update their order
  end

  # POST /tacos
  # POST /tacos.json
  def create
    @taco = Taco.new(taco_params)

    respond_to do |format|
      if @taco.save
        # format.html { redirect_to @taco, notice: 'Taco was successfully created.' }
        format.json { render json: @taco.to_json }
      else
        format.html { render :new }
        format.json { render json: @taco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tacos/1
  # PATCH/PUT /tacos/1.json
  def update
    # TODO: allow users to update their order
  end

  # DELETE /tacos/1
  # DELETE /tacos/1.json
  def destroy
    @taco.destroy
    respond_to do |format|
      format.html { redirect_to tacos_url, notice: 'Taco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taco
      @taco = Taco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taco_params
      params.require(:taco).permit(:meat, :salsa, :rice, :notes)
    end
end
