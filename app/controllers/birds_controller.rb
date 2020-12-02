class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  #   render 'birds/index.html.erb'
  # end

render  json:@birds
  render plain: "Hello #{@birds[3].name}"
end
