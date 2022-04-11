Rails.application.routes.draw do 
  
  get "/resumes", to: "resumes#index" #履歷列表
  get "/resumes/new", to: "resumes#new", as: "new_resume"  #新增履歷

  post "/resumes", to: "resumes#create"

  root "pages#home"
  # get "/", to: "pages#home"
  # get "/about", to: "parges#about"
end