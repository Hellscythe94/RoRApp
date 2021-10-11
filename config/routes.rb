Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"
  mount Crono::Web, at: '/crono'

  root to: "pages#homepage"

  get "/rorapp" => "rorapp#index", as: "ror_index"
  get "/rorapp/ror" => "rorapp#ror", as: "ror_report"
end
