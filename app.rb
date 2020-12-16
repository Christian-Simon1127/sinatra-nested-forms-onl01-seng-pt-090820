require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :pnew
    end

  end
end
