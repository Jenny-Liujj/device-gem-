class UserwaysController < ApplicationController

  before_action :set_userway, only: [:show, :edit, :update, :destroy]

  # GET /userways
  # GET /userways.json
  def index
    @userways = Userway.all
  end

  # GET /userways/1
  # GET /userways/1.json
  def show
  end

  # GET /userways/new
  def new
    @userway = Userway.new
  end

  # GET /userways/1/edit
  def edit
  end

  # POST /userways
  # POST /userways.json
  def create
    @userway = Userway.new(userway_params)

    respond_to do |format|
      if @userway.save
        format.html { redirect_to @userway, notice: 'Userway was successfully created.' }
        format.json { render :show, status: :created, location: @userway }
      else
        format.html { render :new }
        format.json { render json: @userway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userways/1
  # PATCH/PUT /userways/1.json
  def update
    respond_to do |format|
      if @userway.update(userway_params)
        format.html { redirect_to @userway, notice: 'Userway was successfully updated.' }
        format.json { render :show, status: :ok, location: @userway }
      else
        format.html { render :edit }
        format.json { render json: @userway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userways/1
  # DELETE /userways/1.json
  def destroy
    @userway.destroy
    respond_to do |format|
      format.html { redirect_to userways_url, notice: 'Userway was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userway
      @userway = Userway.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userway_params
      params.require(:userway).permit(:name, :password)
    end
end
