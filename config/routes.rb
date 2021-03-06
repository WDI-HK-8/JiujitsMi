Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root 'landing_page#index'

# get "/*path" => redirect("/?goto=%{path}")

  resources :positions do
    resources :technique_types do
      resources :techniques do
        resources :user_videos
        resources :steps
      end
    end
  end
  resources :delete_user_videos
end
