Rails.application.routes.draw do

  scope module: :public do

    get "customers/mypage"=>"customers#show"
    get "customers/infomation/edit"=>"customers#edit"
    patch "customers/infomation"=>"customers#update"
    get "customers/confirm"=>"customers#confirm"
    patch "customers/quit"=>"customers#quit"

    resources :cart_items
  end

  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

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
