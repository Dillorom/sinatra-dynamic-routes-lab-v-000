require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reversename
    "#{@reversename}"
  end

end
