class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]
  #before_action :authorized?, only: %i[edit update destroy]
  
  def index
    @q = Game.ransack(params[:q])
    if params[:page_n].present?
      number = params[:page_n]
      session[:page_n] = number
      if number>"30"
        session[:page_n] = "30"
      end
      
    else
      session[:page_n] = "10"
    end
    @games = @q.result(distinct: true).order('created_at DESC').page(params[:page]).per(session[:page_n])
    
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


  def show
    @user = Game.friendly.find(params[:id])
  end


  def new
    @game = Game.new
  end


  def edit
    
  end

  
  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    respond_to do |format|
      if @game.save
        record_activity("Új játék felvéve: #{@game.name}")

        format.html { redirect_to game_url(@game), notice: "Game was successfully created." }
       
      else
        format.html { render :new, status: :unprocessable_entity }
       
      end
    end
  end

  
  def update
    respond_to do |format|
      record_activity("Játék módosítva - Előtte: #{@game.name}")
      if @game.update(game_params)
        record_activity("Játék módosítva - Utána: #{@game.name}")
        format.html { redirect_to game_url(@game), notice: "Game was successfully updated." }        
      else
        format.html { render :edit, status: :unprocessable_entity }        
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

  
  def destroy
    
      record_activity("Játék eltávolítva: #{@game.name}")
      @game.destroy

    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      
    end
  end

  private
    
    def set_game
      @game = Game.friendly.find(params[:id])
    end

    
    def game_params
      params.require(:game).permit(:name, :link_steam, :link_epic, :link_other, :description, :image, :link_hun)
    end

    def je_params
      params.require(:product).permit(:id, :done )
    end
end
