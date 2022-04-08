class PagesController < ApplicationController
  def home
    # 如果這裡有自己寫，會優先讀去這裡的檔案資料路徑
    # render "resumes/hello" #讀取resumes底下的hello檔案
  end
end
