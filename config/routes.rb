Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions',
  }
  scope module: :public do
    get "/" => "homes#top"
    get "about" => "homes#about"
    get "customers/mypage"=>"customers#show"
    get "customers/infomation/edit"=>"customers#edit"
    patch "customers/infomation"=>"customers#update"
    get "customers/confirm"=>"customers#confirm"
    patch "customers/quit"=>"customers#quit"

    resources :cart_items
    resources :orders, only: [:new, :index, :show, :complete]
  end

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :public do
   resources :items, only: %i[index show]
  end

  scope module: :public do
   resources :addresses, only: %i[index edit create update destroy]
  end
end
