Rails.application.routes.draw do
  get 'resumes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  # get "/", to: "pages#home" # 同上
  get "/resumes", to: "resumes#index"
  get "/resumes/new", to: "resumes#new", as: "new_resume" 
  # get "/contact", to: "pages#contact"
end
