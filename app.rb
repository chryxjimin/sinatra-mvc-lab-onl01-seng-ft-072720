require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do
     piglatin = PigLatinizer.new
    @piglatinize = piglatin.piglatinize(params[:phrase])
    erb :piglatinize
  end
end
