class Game < ActiveRecord::Base
	belongs_to :winner, :foreign_key => :player_id, :class_name => "Player"
	belongs_to :loser, :foreign_key => :player_id, :class_name => "Player"
end
