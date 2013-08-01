require "sinatra"

# Specify valid moves and content type
before do
  content_type :txt
  @defeat = { rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
end

get '/throw/:type' do
  # params hash holds querystring and form data
  player_throw = params[:type].to_sym
  # in case throw is not valid, halt with status code 403
  # (forbidden)
  unless @throws.include? player_throw
    halt 403, "You must throw one of the following: #{@throws}"
  end
  # select random throw for the computer
  computer_throw = @throws.sample
  # compare throws to determine winner
  if player_throw == computer_throw
    "You tied with the computer. Try again!"
  elsif computer_throw == @defeat[player_throw]
    "Nicely done: #{player_throw} beats #{computer_throw}"
  else
    "Ouch: #{computer_throw} beats #{player_throw}, better luck next time!"
  end
end
