class SessionsController < ApplicationController

  def create
    request.env["omniauth.auth"]
    render :ok
  end

end
