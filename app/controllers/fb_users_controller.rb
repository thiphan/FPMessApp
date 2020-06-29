class FbUsersController < ApplicationController
  before_action :set_fb_user, only: [:show, :edit, :update, :destroy]

  # GET /fb_users
  # GET /fb_users.json
  def index
    @fb_users = FbUser.all
  end

  # GET /fb_users/1
  # GET /fb_users/1.json
  def show
  end

  # GET /fb_users/new
  def new
    @fb_user = FbUser.new
  end

  # GET /fb_users/1/edit
  def edit
  end

  # POST /fb_users
  # POST /fb_users.json
  def create
    @fb_user = FbUser.new(fb_user_params)

    respond_to do |format|
      if @fb_user.save
        format.html { redirect_to @fb_user, notice: 'Fb user was successfully created.' }
        format.json { render :show, status: :created, location: @fb_user }
      else
        format.html { render :new }
        format.json { render json: @fb_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fb_users/1
  # PATCH/PUT /fb_users/1.json
  def update
    @fb_user = FbUser.find(params[:id])
    respond_to do |format|
      if @fb_user.update(fb_user_params)
        format.html { redirect_to @fb_user, notice: 'Fb user was successfully updated.' }
        format.json { render :show, status: :ok, location: @fb_user }
      else
        format.html { render :edit }
        format.json { render json: @fb_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fb_users/1
  # DELETE /fb_users/1.json
  def destroy
    @fb_user.destroy
    respond_to do |format|
      format.html { redirect_to fb_users_url, notice: 'Fb user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fb_user
      @fb_user = FbUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fb_user_params
      params.require(:fb_user).permit(:link, :name, :email, :password)
    end
end
