Rails.application.routes.draw do
  get 'index' => 'blog#index', as: 'blogs'
  get 'blogs/new' => 'blog#new', as: 'new_blog'
    get 'blogs/:id' => 'blog#show', as: 'blog'
    root 'blog#index'
end
