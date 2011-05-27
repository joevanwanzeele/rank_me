class HomeController < ApplicationController
  def my_rank
	@rank = Random.new.rand(200..500)
  end

end
