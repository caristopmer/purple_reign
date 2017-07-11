get '/comments/:id' do
  "show comment"
end

post '/articles/:id/comments' do
  "post new comment to article"
end

get '/comments/:id/edit' do
  "edit comment form"
end

put '/comments/:id' do
 "edit comment"
end

delete '/comments/:id' do
  "delete comment"
end
