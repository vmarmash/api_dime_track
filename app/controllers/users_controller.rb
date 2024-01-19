# frozen_string_literal: true

class UsersController < ApplicationController
  def self
    render json: current_devise_api_user, status: :ok
  end
end
