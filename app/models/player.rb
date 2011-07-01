class Player < ActiveRecord::Base
	has_many :wins, :class_name => "Match", :foreign_key => "winner"
	has_many :losses, :class_name => "Match", :foreign_key => "loser"
end
