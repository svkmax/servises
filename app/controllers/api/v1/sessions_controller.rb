class Api::V1::SessionsController < ApplicationController

  def new
    request.env["omniauth.auth"]
    render json: 'will be implemented soon'
  end

  def create
   puts request.env["omniauth.auth"]
    render json: :ok
  end

end
