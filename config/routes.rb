Rails.application.routes.draw do
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions',
  }
  #get "test/about" => "public/homes#about"

  scope module: :public do
<<<<<<< HEAD
    get "/" => "homes#top"
    get '/about' => 'homes#about'
=======
    root to: "homes#top"
    get "about"=>"homes#about"
>>>>>>> origin/develop
    get "customers/mypage"=>"customers#show"
    get "customers/infomation/edit"=>"customers#edit"
    patch "customers/infomation"=>"customers#update"
    get "customers/confirm"=>"customers#confirm"
    patch "customers/quit"=>"customers#quit"

    resources :cart_items
    resources :orders, only: [:new, :index, :show, :complete]
    resources :items, only: %i[index show]
    resources :addresses, only: %i[index edit create update destroy]
  end

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
