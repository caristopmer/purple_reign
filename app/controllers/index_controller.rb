get '/' do
  redirect "/articles" if logged_in?
  erb :index
end

# get '/articles/1' do
#   erb :article_sample
# end
