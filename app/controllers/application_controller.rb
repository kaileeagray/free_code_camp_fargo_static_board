class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #after_action :verify_authorized, except: :index

end
