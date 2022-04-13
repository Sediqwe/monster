class UsersController < ApplicationController
  before_action :set_users, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @user = User.find(current_user.id)
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @users = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @users = users.new(users_params)
    @users.user_id = current_user.id
    @users.active = true
    respond_to do |format|
      if @users.save
        format.html { redirect_to users_url(@users), notice: "users was successfully created." }
        format.json { render :show, status: :created, location: @users }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @users.update(users_params)
        format.html { redirect_to users_url(@users), notice: "users was successfully updated." }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @users.destroy

    respond_to do |format|
      format.html { redirect_to users_index_url, notice: "users was successfully destroyed." }
      format.json { head :no_content }
    end
  end
 
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_users
      @users = User.find(current_user.id)
    end

    # Only allow a list of trusted parameters through.
    def users_params
      params.require(:user).permit(:name, :email, :password, :alias)
    end
end
