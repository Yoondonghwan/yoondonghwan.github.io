Rails.application.routes.draw do
  devise_for :users
get '/posts/new' =>'posts#new'
post '/posts/create' =>'posts#create'

root 'posts#index'
get '/posts/show/:post_id' =>'posts#show'

get '/posts/edit/:post_id' =>'posts#edit'
post '/posts/update/:post_id' =>'posts#update'

post '/posts/destroy/:post_id' =>'posts#destroy'

post '/posts/show/:post_id/comments/create' =>'comments#create'

post '/posts/show/:post_id/comments/destroy/:comment_id' =>'comments#destroy'

end
