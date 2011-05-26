class HomeController < ApplicationController
  def my_rank
	@rank = rand(300) + 200
  end

end
