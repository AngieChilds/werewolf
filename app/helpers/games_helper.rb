module GamesHelper
# t.string   "player"
#   t.boolean  "alive",         default: true
#    t.boolean  "werewolf",      default: false
#   t.integer  "votes_against"
#    t.boolean  "voted",         default: false
#    t.integer  "village_id"
# t.datetime "created_at"
#   t.datetime "updated_at"
#   t.integer  "user_id"
# start game
#each village must put all player in array, by default all alive: true
#  shuffle, mark one or more? as werewolf. toggle!(:werewolf)
#  display the werewolf on user page only for current_user.(private)
#Start a blog - array with all :alive players to vote in the top section (game messages)
#new day
#1 for all the werewolf: false players (that click the vote)
#  the array with all the alive player to be radio_button count votes_against
#  the player with the most votes_against: toggle!(:alive) display lynched sentence
#  if the player that ends up lynched is a werewolf display other message. 
#2 for the werewolf player - the voted choice - toggle!(:alive) display eaten by werewolf
#  for all players voting toggle!(:voted) add a point to a new column called points.
# I guess with radio_button players can change the vote by vote again?
#end of day: 
#count votes, message to blog, toggle!(:voted) to false, 
#if the voted_against: is 0 add 1 point to points: , reset the :voted_against to zero
#maybe the :voted is incorrect? , if a player does not vote 2 days the player dies. toggle!(:alive)
# it can happen the werewolf dies by not voting
# make new array for all the alive, check that at least 1 werewolf and 2 non werewolf
# game ends if:
# alive: false, werewolf: true < 1
# alive: true,  werewolf: false < 2
#
#declare a winner by having the most points. 
#  
#each player can: 
#make a comment on the blog, motivating others to vote for someone else 
#vote
#the way to win is by voting each day and making sure you dont get votes against you. 

  
  
end