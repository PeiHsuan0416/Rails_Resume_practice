class ResumesController < ApplicationController
  def index
  end

  def new
    @resume = Resume.new
  end

  def create
    # render html: params[:resume]
    clean_params = params.require(:resume).permit(:title, :content, :status) #可以放在別的地方
    @resume = Resume.new(clean_params)
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

  private
  # Strong Parameters

end