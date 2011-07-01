require 'rating_calculator'

class HomeController < ApplicationController

	def my_rank
		winner_id = params[:winner_id]
		loser_id = params[:loser_id]
		
		if winner_id != nil and loser_id != nil then
			@winning_player = Player.find(winner_id)
			@losing_player = Player.find(loser_id)
			
			match = Match.new(:winner => @winning_player.id, :loser => @losing_player.id)
			match.save
			
			RankingHistory.new(:player => @winning_player, :match => match, :previous_rating => @winning_player.rating).save
			RankingHistory.new(:player => @losing_player, :match => match, :previous_rating => @losing_player.rating).save
			
			@calculator = RatingCalculator.new
			@calculator.calculate(@winning_player.rating, @losing_player.rating)
			
			@winning_player.update_attribute("rating", @calculator.new_winner_rating)
			@losing_player.update_attribute("rating", @calculator.new_loser_rating)
			
			@winner_rating = @winning_player.name << " - " << @winning_player.rating.to_s
			@loser_rating = @losing_player.name << " - " << @losing_player.rating.to_s
		end
	end
end
