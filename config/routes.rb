Rails.application.routes.draw do
    get 'index' => 'blog#index', as: 'blogs'
    get 'blogs/new' => 'blog#new'
    get 'blogs/:id' => 'blog#show', as: 'blog'
    root 'blog#index'
end
