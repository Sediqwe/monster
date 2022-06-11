class ForumalsController < ApplicationController
  before_action :set_forumal, only: %i[ show edit update destroy ]

  # GET /forumals or /forumals.json
  def index
    @forumals = Forumal.where(forum: params[:forum_id])
  end

  # GET /forumals/1 or /forumals/1.json
  def show
  end

  # GET /forumals/new
  def new
    @forumal = Forumal.new
  end

  # GET /forumals/1/edit
  def edit
  end

  # POST /forumals or /forumals.json
  def create
    @forumal = Forumal.new(forumal_params)

    respond_to do |format|
      if @forumal.save
        format.html { redirect_to forumal_url(@forumal), notice: "Forumal was successfully created." }
        format.json { render :show, status: :created, location: @forumal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @forumal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forumals/1 or /forumals/1.json
  def update
    respond_to do |format|
      if @forumal.update(forumal_params)
        format.html { redirect_to forumal_url(@forumal), notice: "Forumal was successfully updated." }
        format.json { render :show, status: :ok, location: @forumal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @forumal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forumals/1 or /forumals/1.json
  def destroy
    @forumal.destroy

    respond_to do |format|
      format.html { redirect_to forumals_url, notice: "Forumal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forumal
      @forumal = Forumal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def forumal_params
      params.require(:forumal).permit(:title, :desc, :user_id, :active, :forum_id)
    end
end
