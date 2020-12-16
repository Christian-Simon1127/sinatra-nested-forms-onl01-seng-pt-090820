require './environment'
require_relative ''
require_relative ''

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      
      
      
      erb :'pirates/show'
    end

  end
end
