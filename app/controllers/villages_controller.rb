class VillagesController < ApplicationController
  before_action :set_village, only: [:show, :edit, :update, :destroy]

  def index
    @villages = Village.all
  end

  def show
  end

 
  def new
    @village = Village.new

  end

  def edit
  end

  
  def create
    @village = Village.new(village_params)

    respond_to do |format|
      if @village.save
        format.html { redirect_to @village, notice: 'Village was successfully created.' }
        format.json { render action: 'show', status: :created, location: @village }
      else
        format.html { render action: 'new' }
        format.json { render json: @village.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @village.update(village_params)
        format.html { redirect_to @village, notice: 'Village was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @village.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @village.destroy
    respond_to do |format|
      format.html { redirect_to villages_url }
      format.json { head :no_content }
    end
  end

  def games
    @user = User.all
    
  end
  def beast
  @village = Village.find(params[:village_id])
  @game = @village.games.find(params[:id])
  @game.werewolf = @game.toggle!(:werewolf)
  flash[:notice] = 'this werewolf'
  redirect_to village_path
 end
  
  
  
  private
    
    def set_village
      @village = Village.find(params[:id])
    end

    
    def village_params
      params.require(:village).permit(:name, :games_attributes => [:id, :user_id])
    end
end
