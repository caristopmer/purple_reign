get '/users' do
  "users index"
end

get '/users/new' do
 "user registration form"
end

get '/users/:id' do
  "users show"
end

post '/users' do
 "create new user"
end

get '/users/:id/edit' do
  "user edit form"
end

put '/users/:id' do
  "edit user"
end

delete '/users/:id' do
  "delete user"
end
