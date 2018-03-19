class TakoyakisController < ApplicationController
  before_action :set_takoyaki, only: [:show, :edit, :update, :destroy]

  # GET /takoyakis
  # GET /takoyakis.json
  def index
    @takoyakis = Takoyaki.all
  end

  # GET /takoyakis/1
  # GET /takoyakis/1.json
  def show
  end

  # GET /takoyakis/new
  def new
    @takoyaki = Takoyaki.new
  end

  # GET /takoyakis/1/edit
  def edit
  end

  # POST /takoyakis
  # POST /takoyakis.json
  def create
    @takoyaki = Takoyaki.new(takoyaki_params)

    respond_to do |format|
      if @takoyaki.save
        format.html { redirect_to @takoyaki, notice: 'Takoyaki was successfully created.' }
        format.json { render :show, status: :created, location: @takoyaki }
      else
        format.html { render :new }
        format.json { render json: @takoyaki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /takoyakis/1
  # PATCH/PUT /takoyakis/1.json
  def update
    respond_to do |format|
      if @takoyaki.update(takoyaki_params)
        format.html { redirect_to @takoyaki, notice: 'Takoyaki was successfully updated.' }
        format.json { render :show, status: :ok, location: @takoyaki }
      else
        format.html { render :edit }
        format.json { render json: @takoyaki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takoyakis/1
  # DELETE /takoyakis/1.json
  def destroy
    @takoyaki.destroy
    respond_to do |format|
      format.html { redirect_to takoyakis_url, notice: 'Takoyaki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_takoyaki
      @takoyaki = Takoyaki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def takoyaki_params
      params.require(:takoyaki).permit(:price, :quantity_oct)
    end
end
