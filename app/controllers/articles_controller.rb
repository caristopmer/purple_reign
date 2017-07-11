get '/articles' do
  @articles = Article.all
  erb :"articles/index"
end

get '/articles/new' do
  erb :"articles/new"
end

post '/articles' do
  @article = Article.new(params[:article])
  @article.author = current_user
  if @article.save
    redirect "/articles/#{@article.id}"
  else
    @errors = @article.errors.full_messages
    erb :"users/new"
  end
end

get '/articles/:id' do
  @article = Article.find(params[:id])
  erb :"articles/show"
end
