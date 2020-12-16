require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :pirates_new
    end

  end
end
