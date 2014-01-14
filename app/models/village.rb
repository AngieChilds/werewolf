class Village < ActiveRecord::Base
  has_many :games, dependent: :destroy
  accepts_nested_attributes_for :games
  
  def games_for_form
    collection = games.where(village_id: id)
    collection.any? ? collection : games.build
  end
  
  
end
