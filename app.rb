require './environment'
require_relative 'models/pirate.rb'
require_relative 'models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      
      
      
      
      erb :'pirates/show'
    end

  end
end
