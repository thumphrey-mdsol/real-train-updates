class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def welcome
  render 'welcome'
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/welcome'
  end
end
