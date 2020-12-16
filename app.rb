require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |attrs|
        Course.new(attrs)
      end
      
      @ships = Ship.all
      
      erb :'pirates/show'
    end

  end
end
