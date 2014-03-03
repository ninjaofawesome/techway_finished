class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception 

     # before_filter :authenticate_admin!
    
    # protected 
    # def admin_required 
    #   authenticate_or_request_with_http_basic do |user_name, password|
    #    user_name == 'admin' && password == 'jgraham1'
    #   # end if RAILS_ENV =='production || params[:admin_http]'
  #   end
  # end
end
