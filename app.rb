require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @square = params[:number].to_i**2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i 
    @say = params[:phrase].times(@number)
    "#{@say}"
  end

end
