class MoodsApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/moods' do
    if params[:moods_id].to_i == 1
        erb :sad
    elsif params[:moods_id].to_i == 2
        erb :happy
    elsif params[:moods_id].to_i == 3
        erb :angry
    elsif params[:moods_id].to_i == 4
        erb :bored
    end
  end

  get '/moods/sad' do
    if params[:action] == "watch"
      erb :sad_watch
    elsif params[:action] == "photos"
      erb :sad_photos
    elsif params[:action] == "quotes"
      erb :sad_quotes
    end
  end

  get '/moods/angry' do
    if params[:action] == "watch"
      erb :angry_watch
    elsif params[:action] == "photos"
      erb :angry_photos
    elsif params[:action] == "quotes"
      erb :angry_quotes
    end
  end

  get '/moods/happy' do
    if params[:action] == "watch"
      erb :happy_watch
    elsif params[:action] == "photos"
      erb :happy_photos
    elsif params[:action] == "quotes"
      erb :happy_quotes
    end
  end

  get '/moods/bored' do
    if params[:action] == "watch"
      erb :bored_watch
    elsif params[:action] == "photos"
      erb :bored_photos
    elsif params[:action] == "quotes"
      erb :bored_quotes
    end
  end
end

