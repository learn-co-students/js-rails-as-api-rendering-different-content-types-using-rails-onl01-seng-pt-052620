class BirdsController < ApplicationController
  def index
    # @birds = Bird.all --> However, we really only needed instance variables when we were rendering to ERB. Now that we are directly rendering to JSON in the same action, we no longer need to deal with instance variables and can instead just use a local variable
    birds = Bird.all
    # render plain: "Hello #{@birds[3].name}"
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']
    # render json: @birds
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }

    # We can choose to explicitly convert our array or hash, without any problem by adding to_json to the end:
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    render json: birds
  end
end
