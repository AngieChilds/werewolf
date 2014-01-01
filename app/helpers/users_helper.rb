module UsersHelper
  def user_game(game)
  @user = current_user.id.joins(:games_users).where(:games_users => {:game_id => params[:id]})
  end
  
end
