class HomeController < ApplicationController

  def my_rank
    if params[:winner_rating] != nil and params[:winner_rating].strip != "" then
      @winner_rating = params[:winner_rating]
    end

    if params[:loser_rating] != nil and params[:loser_rating].strip != "" then
      @loser_rating = params[:loser_rating]
    end

    if @winner_rating and @loser_rating then
      @calculator = RatingCalculator.new
      @calculator.calculate(Integer(@winner_rating), Integer(@loser_rating))

      @new_winner_rating = "New Winner Rating: " + @calculator.new_winner_rating.to_s
      @new_loser_rating = "New Loser Rating: " + @calculator.new_loser_rating.to_s
    end

  end
end
