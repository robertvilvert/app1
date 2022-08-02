require 'sinatra'

get '/' do
  if ENV['SO'] == "Windows"
    "Me recuso a dizer que Windows é o melhor sistema operacional :-("
  else
  "O melhor sistema operacional do mundo é: #{ENV['SO']}"
  end
end

get '/health_check' do
  status 200
  body 'All are good ;-)'
end
