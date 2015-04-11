class SessionsController < ApplicationController

  def new
    redirect_to '/auth/github'
  end


  def create
  end


  def destroy
    sign_out
    redirect_to root_url
  end


  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end
end
