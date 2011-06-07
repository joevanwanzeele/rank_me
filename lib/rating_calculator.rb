class RatingCalculator

  attr_accessor :new_winner_rating, :new_loser_rating
  
  def initialize()
    @new_winner_rating = 0
    @new_loser_rating = 0
  end

  def calculate(winner_rating, loser_rating)
    difference = winner_rating - loser_rating
    abs_diff = (winner_rating - loser_rating).abs
    
    exchange = 0
    if difference >= 0 then
      if abs_diff <= 12 then
        exchange = 8
      elsif abs_diff <= 37 then
        exchange = 7
      elsif abs_diff <= 62 then
        exchange = 6
      elsif abs_diff <= 87 then
        exchange = 5
      elsif abs_diff <= 112 then
        exchange = 4
      elsif abs_diff <= 137 then
        exchange = 3
      elsif abs_diff <= 162 then
        exchange = 2
      elsif abs_diff <= 187 then
        exchange = 2
      elsif abs_diff <= 212 then
        exchange = 1
      elsif abs_diff <= 237 then
        exchange = 1
      else
        exchange = 0
      end

      @new_winner_rating = winner_rating + exchange      
      @new_loser_rating = loser_rating - exchange      
    else
      
      if abs_diff <= 12 then
        exchange = 8
      elsif abs_diff <= 37 then
        exchange = 10
      elsif abs_diff <= 62 then
        exchange = 13
      elsif abs_diff <= 87 then
        exchange = 16
      elsif abs_diff <= 112 then
        exchange = 20
      elsif abs_diff <= 137 then
        exchange = 25
      elsif abs_diff <= 162 then
        exchange = 30
      elsif abs_diff <= 187 then
        exchange = 35
      elsif abs_diff <= 212 then
        exchange = 40
      elsif abs_diff <= 237 then
        exchange = 45
      else
        exchange = 50
      end
      
      @new_winner_rating = winner_rating - exchange
      @new_loser_rating = loser_rating + exchange
    end
  end
end
