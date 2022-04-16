class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]
  #before_action :authorized?, only: %i[edit update destroy]
  # GET /games or /games.json
  def index
    @q = Game.ransack(params[:q])
    
    @games = @q.result(distinct: true).order('created_at DESC').page(params[:page]).per(8)
  end
  def magyhu
    @game = Game.find(params[:id])
    if params[:type] == "van"
      @game.done = true
        
    else
    @game.done=false  

    end
    @game.save
  end
  # GET /games/1 or /games/1.json
  def show
    @user = Game.friendly.find(params[:id])
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
    
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    respond_to do |format|
      if @game.save
        record_activity("Új játék felvéve: #{@game.name}")

        format.html { redirect_to game_url(@game), notice: "Game was successfully created." }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    respond_to do |format|
      record_activity("Játék módosítva - Előtte: #{@game.name}")
      if @game.update(game_params)
        record_activity("Játék módosítva - Utána: #{@game.name}")
        format.html { redirect_to game_url(@game), notice: "Game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end
  def download
    i = Download.new
    i.game_id = je_params[:id]
    i.upload_id = je_params[:done]
    if i.save
      render json: { valami: 'OK' }
    else
      render json: { valami: 'NOK' }
    end
   end

  # DELETE /games/1 or /games/1.json
  def destroy
    
      record_activity("Játék eltávolítva: #{@game.name}")
      @game.destroy

    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:name, :link_steam, :link_epic, :link_other, :description, :image, :link_hun)
    end

    def je_params
      params.require(:product).permit(:id, :done)
    end
end
