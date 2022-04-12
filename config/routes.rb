Rails.application.routes.draw do 
  # resources :resumes 自動建立八條路徑完成CRUD
  # resources :resumes, except: [:destory]
  # resources :resumes, only: []
  get "/resumes", to: "resumes#index" #履歷列表
  get "/resumes/new", to: "resumes#new", as: "new_resume"  #新增履歷
  post "/resumes", to: "resumes#create" #建立

  get "/resumes/:id", to: "resumes#show", as: "resume" #之後可以有個resume_path #網址配對是由上至下如果和新增履歷位置顛倒，新增履歷頁面就會錯誤
  delete "/resume/:id" to: "resumes#destory"#刪除履歷

  get "/resumes/:id/edit", to: "resumes#edit", as: "edit_resume" #修改履歷
  patch "/resumes/:id", to: "resumes#update" #更新
  put "/resumes/:id", to: "resumes#update"

  root "resumes#index"
  # root "pages#home"
  # get "/", to: "pages#home"
  # get "/about", to: "parges#about"

end