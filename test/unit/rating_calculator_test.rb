require 'rating_calculator'

class RatingCalculatorTest < ActionView::TestCase
	test "should adjust by 8 if range within 12" do
		winner = 50
		loser = 49
		calc = RatingCalculator.new
		calc.calculate(winner, loser)
		
		assert_equal(58, calc.new_winner_rating, "winner should go up by 8")
		assert_equal(41, calc.new_loser_rating, "loser should go down by 8")
	end 
	
	test "should adjust negatively by 8 if range within 12" do
		winner = 49
		loser = 50
		calc = RatingCalculator.new
		calc.calculate(winner, loser)
		
		assert_equal(57, calc.new_winner_rating, "winner should go up by 8")
		assert_equal(42, calc.new_loser_rating, "loser should go up by 8")
	end
end