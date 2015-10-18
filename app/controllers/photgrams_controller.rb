class PhotgramsController < ApplicationController
  before_action :set_photgram, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /photgrams
  # GET /photgrams.json
  def index
    @photgrams = Photgram.all
  end

  # GET /photgrams/1
  # GET /photgrams/1.json
  def show
  end

  # GET /photgrams/new
  def new
    @photgram = current_user.photgrams.build
  end

  # GET /photgrams/1/edit
  def edit
  end

  # POST /photgrams
  # POST /photgrams.json
  def create
    @photgram = current_user.photgrams.build(photgram_params)

    respond_to do |format|
      if @photgram.save
        format.html { redirect_to @photgram, notice: 'Photgram was successfully created.' }
        format.json { render :show, status: :created, location: @photgram }
      else
        format.html { render :new }
        format.json { render json: @photgram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photgrams/1
  # PATCH/PUT /photgrams/1.json
  def update
    respond_to do |format|
      if @photgram.update(photgram_params)
        format.html { redirect_to @photgram, notice: 'Photgram was successfully updated.' }
        format.json { render :show, status: :ok, location: @photgram }
      else
        format.html { render :edit }
        format.json { render json: @photgram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photgrams/1
  # DELETE /photgrams/1.json
  def destroy
    @photgram.destroy
    respond_to do |format|
      format.html { redirect_to photgrams_url, notice: 'Photgram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photgram
      @photgram = Photgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photgram_params
      params.require(:photgram).permit(:description, :picture, :image)
    end
end
