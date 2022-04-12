class ResumesController < ApplicationController
  
  before_action: find_reaume, only: [:show, :edit, :update, :destory]
  
  def index
  end

  def show
    begin
      # @rescue = Resume.find(params[:id]) 因為許多地方都要有，所以拉到上方統一處理
    rescue ActiveRecord::RecordNotFound
      render html: "找不到"
      # redirect_to "/", alert: "不要亂來"
    end
  end

  def new
    @resume = Resume.new
  end

  def create
    # render html: params[:resume]
    #clean_params = params.require(:resume).permit(:title, :content, :status) #可以放在下方private
    # @resume = Resume.new(clean_params)
    if @resume.save
      #flash[:abc] = "新增成功" #快閃 key abc隨便寫 常規寫notice，也可以寫在application.html.erb檔案裡~大家都有
      # redirect_to "/" 改寫成下列
      redirect_to resumes_path, notice: "新增成功" #只有notice和alert有效果
    else
      # render html: "fail"
      render :new  #重新render這個畫面，借new來用，rediret_to 會重新整理整個畫面(轉址)
      # render action: :new原本完整的寫法
    end
  end

  # 更新要先把資料找出來update 錯誤找edit
  def update
    # @resume = Resume.find(params[:id])
    if @resume.update(clean_params)
      redirect_to resumes_path, notice: "更新成功"
    else
      render: edit
    end
  end

  def destory
    # @resume = Resume.find(params[:id]) #找到
    @resume.destory #刪除
    redirect_to resumes_path, notice: "已刪除" #離開
  end

  private #沒有打算給外部的人使用的時候放在這邊
  # Strong Parameters
  def clean_params
    params.require(:resume).permit(:title, :content, :status)
  end

  def find_reaume
    @resume = Resume.find(params[:id])
  end



end