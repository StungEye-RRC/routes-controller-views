class HomeController < ApplicationController
  def index
    @how_many_chunky_bacons = 15
  end
  # Automagic loading of app/views/home/index.html.erb
  # The automagic hand-off of any instance variables.
  # Why is the class getting cached?

  def about

  end

  def goats
    @number_of_goats = params[:number].to_i
    @size_of_goats   = params[:size].to_i
  end
  # Automagically load app/views/home/goats.html.erb
end
