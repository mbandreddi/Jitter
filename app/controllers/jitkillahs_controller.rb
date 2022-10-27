class JitkillahsController < ApplicationController
  before_action :set_jitkillah, only: %i[ show edit update destroy ]

  # GET /jitkillahs or /jitkillahs.json
  def index
    @jitkillahs = Jitkillah.all
  end

  # GET /jitkillahs/1 or /jitkillahs/1.json
  def show
  end

  # GET /jitkillahs/new
  def new
    @jitkillah = Jitkillah.new
  end

  # GET /jitkillahs/1/edit
  def edit
  end

  # POST /jitkillahs or /jitkillahs.json
  def create
    @jitkillah = Jitkillah.new(jitkillah_params)

    respond_to do |format|
      if @jitkillah.save
        format.html { redirect_to jitkillah_url(@jitkillah), notice: "Jitkillah was successfully created." }
        format.json { render :show, status: :created, location: @jitkillah }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jitkillah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jitkillahs/1 or /jitkillahs/1.json
  def update
    respond_to do |format|
      if @jitkillah.update(jitkillah_params)
        format.html { redirect_to jitkillah_url(@jitkillah), notice: "Jitkillah was successfully updated." }
        format.json { render :show, status: :ok, location: @jitkillah }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jitkillah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jitkillahs/1 or /jitkillahs/1.json
  def destroy
    @jitkillah.destroy

    respond_to do |format|
      format.html { redirect_to jitkillahs_url, notice: "Jitkillah was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jitkillah
      @jitkillah = Jitkillah.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jitkillah_params
      params.require(:jitkillah).permit(:content, :user_id)
    end
end
