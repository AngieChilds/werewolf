module VillagesHelper
  def beast
  @village = Village.find(params[:village_id])
  @game = @village.games.find(params[:game_id])
  @game.toggle!(:werewolf)
  flash[:notice] = 'this werewolf'
  redirect_to village_path
 end
  
  
end
