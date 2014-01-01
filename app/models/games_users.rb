class GamesUsers < ActiveRecord::Base
  self.primary_key [:game_id, :user_id]
    belongs_to :users
    belongs_to :games
  
end
