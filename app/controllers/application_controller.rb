class ApplicationController < ActionController::Base
#繼承的概念:共同的放在上層
rescue_from ActiveRecord::RecordNotFound, with: :not_found

private #封裝的概念:不想被人家看到的
    def not_found
        render file: "#{Rails.root}/public/not_found.html",
           status: 404,
           layout: false
    end
end
