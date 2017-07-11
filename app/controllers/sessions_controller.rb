get '/sessions/new' do
  "login form"
end

post '/sessions' do
  "login"
end

delete '/sessions' do
  session[:user_id] = nil
  redirect "/"
end
