class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    @average_age = Comedian.average(:age)
    erb :index
  end

end
