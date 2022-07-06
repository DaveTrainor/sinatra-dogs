require 'sinatra'
require 'sinatra/reloader' if development?


#   get '/' do
#       "Helloooo! D'ye like dags?"
#   end

#   get '/Dave' do
#     "Helloooo Dave! D'ye like dags?"
#   end

#   get '/:name?' do |name|
#     "Helloooo #{name}! D'ya like dags?"
#   end


  # get '/:name?' do |n|
  #  if name
  #     "Hello #{name}! D'ya like dags?"
  #   else
  #     "Hello stranger! D'ya like dags?"
  #   end
  # end

  get '/:name?' do |name|
    if name
       statement = "Yo #{name}! D'ya like dags?"
    else
       statement = "Yo stranger! D'ya like dags?"
    end

    erb :index, :locals => {:statement=>statement}
   end
