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
    @result = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times{@result = @result + @phrase}
    "#{@result}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @say = "params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]"
    "#{@say}"
  end

end
