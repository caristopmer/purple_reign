post '/articles/:id' do
  "post new comment to article"
end

put '/articles/:article_id/comments/:comment_id' do
 "edit comment"
end

delete '/articles/:article_id/comments/:comment_id' do
  "delete comment"
end
