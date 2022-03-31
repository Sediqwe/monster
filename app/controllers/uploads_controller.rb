class UploadsController < ApplicationController
  before_action :set_upload, only: %i[ show edit update destroy ]
  before_action :authorized?
  # GET /uploads or /uploads.json
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1 or /uploads/1.json
  def show
  end

  # GET /uploads/new
  def new
    @upload = Upload.new
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads or /uploads.json
  def create
    @upload = Upload.new(upload_params)
    @upload.user_id = current_user.id
    respond_to do |format|
      if @upload.save
        record_activity("Sikeres feltöltés: #{ Game.find(@upload.game_id).name} Version: #{@upload.version}")
        format.html { redirect_to upload_url(@upload), notice: "Sikeres feltöltés." }
        format.json { render :show, status: :created, location: @upload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uploads/1 or /uploads/1.json
  def update
    record_activity("Sikeres feltöltés módosítás - Előtt: #{ Game.find(@upload.game_id).name} Version: #{@upload.version}, Desc: Version: #{@upload.description}")
    respond_to do |format|
      if @upload.update(upload_params)
        record_activity("Sikeres feltöltés módosítás - Után: #{ Game.find(@upload.game_id).name} Version: #{@upload.version}, Desc: Version: #{@upload.description}")
        format.html { redirect_to upload_url(@upload), notice: "A feltöltés módosítva." }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1 or /uploads/1.json
  def destroy
    record_activity("Feltöltés törlés: #{ Game.find(@upload.game_id).name} Version: #{@upload.version}")
    @upload.destroy

    respond_to do |format|
      format.html { redirect_to uploads_url, notice: "A feltöltés törölve." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def upload_params
      params.require(:upload).permit(:name, :version, :description, :game_id, :game_files)
    end
end