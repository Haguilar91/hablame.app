class PsychologistsController < ApplicationController
  before_action :set_psychologist, only: [:show, :edit, :update, :destroy]

  # GET /psychologists
  # GET /psychologists.json
  def index
    @psychologists = HomeController.index
  end

  # GET /psychologists/1
  # GET /psychologists/1.json
  def show
  end

  # GET /psychologists/new
  def new
    @psychologist = Psychologist.new
  end

  # GET /psychologists/1/edit
  def edit
  end

  # POST /psychologists
  # POST /psychologists.json
  def create
    @psychologist = Psychologist.new(psychologist_params)

    respond_to do |format|
      if @psychologist.save
        format.html { redirect_to @psychologist, notice: 'Su aplicación ha sido enviada' }
        format.json { render :show, status: :created, location: @psychologist }
      else
        format.html { render :new }
        format.json { render json: @psychologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psychologists/1
  # PATCH/PUT /psychologists/1.json
  def update
    respond_to do |format|
      if @psychologist.update(psychologist_params)
        format.html { redirect_to @psychologist, notice: 'Psychologist was successfully updated.' }
        format.json { render :show, status: :ok, location: @psychologist }
      else
        format.html { render :edit }
        format.json { render json: @psychologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psychologists/1
  # DELETE /psychologists/1.json
  def destroy
    @psychologist.destroy
    respond_to do |format|
      format.html { redirect_to psychologists_url, notice: 'Psychologist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psychologist
      @psychologist = Psychologist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psychologist_params
      params.require(:psychologist).permit(:first_name, :last_name, :status, :collegiate_id, :college, :description, :curriculum, :photo, :is_approved, :is_active, :tags, :office_address)
    end
end
