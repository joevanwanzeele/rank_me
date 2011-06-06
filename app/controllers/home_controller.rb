class HomeController < ApplicationController
  def my_rank
    @rating = Rating.new
  end
end
