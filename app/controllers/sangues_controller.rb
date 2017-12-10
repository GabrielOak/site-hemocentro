class SanguesController < ApplicationController
  before_action :set_sangue, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /sangues
  # GET /sangues.json
  def index
    @sangues = Sangue.all
    authorize @sangues
  end

  # GET /sangues/1
  # GET /sangues/1.json
  def show
  end

  # GET /sangues/new
  def new
    @sangue = Sangue.new
  end

  # GET /sangues/1/edit
  def edit
  end

  # POST /sangues
  # POST /sangues.json
  def create
    @sangue = Sangue.new(sangue_params)

    respond_to do |format|
      if @sangue.save
        format.html { redirect_to @sangue, notice: 'Sangue was successfully created.' }
        format.json { render :show, status: :created, location: @sangue }
      else
        format.html { render :new }
        format.json { render json: @sangue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sangues/1
  # PATCH/PUT /sangues/1.json
  def update
    respond_to do |format|
      if @sangue.update(sangue_params)
        format.html { redirect_to @sangue, notice: 'Sangue was successfully updated.' }
        format.json { render :show, status: :ok, location: @sangue }
      else
        format.html { render :edit }
        format.json { render json: @sangue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sangues/1
  # DELETE /sangues/1.json
  def destroy
    @sangue.destroy
    respond_to do |format|
      format.html { redirect_to sangues_url, notice: 'Sangue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sangue
      @sangue = Sangue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sangue_params
      params.require(:sangue).permit(:tipo, :quantidade)
    end
end
