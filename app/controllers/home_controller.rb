class HomeController < ApplicationController
   # before_action :authenticate_user!, :except => [:index]
  def _bar
     u =User.new
     u.nickname = params[:nickname]
     #@user_nickname = u.nickname
     u.email = params[:email]
     u.save
  end
  
  def index
    if user_signed_in?
      redirect_to "/review/main"
    end
  end
end
  