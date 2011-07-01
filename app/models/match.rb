class Match < ActiveRecord::Base
	belongs_to :player, :foreign_key => "winner"
	belongs_to :player, :foreign_key => "loser"
end
