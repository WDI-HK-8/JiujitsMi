Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root 'landing_page#index'

  get "api" => proc { [404, {}, ['Invalid API endpoint']] }
  get "api/*path" => proc { [404, {}, ['Invalid API endpoint']] }

  get "/*path" => redirect("/?goto=%{path}")


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
