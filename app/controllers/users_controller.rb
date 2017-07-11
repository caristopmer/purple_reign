get '/users' do
  "users index"
end

get '/users/new' do
 erb :"users/new"
end

get '/users/:id' do
  "users show"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.valid? && @user.password == params[:confirm_password]
    @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    @errors = @user.errors.full_messages
    erb :"users/new"
  end
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
