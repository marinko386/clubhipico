class JinetesController < ApplicationController
  before_action :set_jinete, only: [:show, :edit, :update, :destroy]

  # GET /jinetes
  # GET /jinetes.json
  def index
    @jinetes = Jinete.all
  end

  # GET /jinetes/1
  # GET /jinetes/1.json
  def show
  end

  # GET /jinetes/new
  def new
    @jinete = Jinete.new
  end

  # GET /jinetes/1/edit
  def edit
  end

  # POST /jinetes
  # POST /jinetes.json
  def create
    @jinete = Jinete.new(jinete_params)

    respond_to do |format|
      if @jinete.save
        format.html { redirect_to @jinete, notice: 'Jinete was successfully created.' }
        format.json { render :show, status: :created, location: @jinete }
      else
        format.html { render :new }
        format.json { render json: @jinete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jinetes/1
  # PATCH/PUT /jinetes/1.json
  def update
    respond_to do |format|
      if @jinete.update(jinete_params)
        format.html { redirect_to @jinete, notice: 'Jinete was successfully updated.' }
        format.json { render :show, status: :ok, location: @jinete }
      else
        format.html { render :edit }
        format.json { render json: @jinete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jinetes/1
  # DELETE /jinetes/1.json
  def destroy
    @jinete.destroy
    respond_to do |format|
      format.html { redirect_to jinetes_url, notice: 'Jinete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jinete
      @jinete = Jinete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jinete_params
      params.require(:jinete).permit(:nombre)
    end
end
