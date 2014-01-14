class GamesController < ApplicationController
  def index
    @village = Village.find(params[:village_id])
    @game = @village.games.all

   #village_games GET    /villages/:village_id/games(.:format)
  end


  def create
    @village = Village.find(params[:village_id])
    @game = @village.games.create(params[:game].permit(:player, :user_id))
    #@game.user_id = current_user.id
    redirect_to village_path(@village)
    # new_village_game GET    /villages/:village_id/games/new(.:format)
  end
  



  def destroy
     @village = Village.find(params[:village_id])
    @game = @village.games.find(params[:id])
    @game.destroy
     redirect_to village_path(@village)
         #  DELETE /villages/:village_id/games/:id(.:format)
 end
   
 def show
    @village = Village.find(params[:village_id])
    @game = @village.games.find(params[:id])
#games#show PATCH  /villages/:village_id/games/:id(.:format)
    redirect_to village_path(@village)
end



 def update 
   village = Village.find(params[:village_id])
  @game = @village.game.find(params[:id])
   if @game.update_attributes(params(:game).permit(:id, :player, :user_id, :alive, :werewolf))
    redirect_to village_path(@village)
#/villages/:village_id/games/:id(.:format
 else
   render 'edit'
 end
 end
def edit
    @village = Village.find(params[:village_id])
    @game = @village.game.find(params[:id])
     end
def beast
  @village = Village.find(params[:village_id])
  @game = @village.games.find(params[:id])
  @game.toggle!(:werewolf)
  flash[:notice] = 'this werewolf'
  redirect_to village_path
 end

end
