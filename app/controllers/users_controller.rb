# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    run Users::Index
  end

  # TODO: need fix it
  def show
    # run Pharmacies::Index
    render json: User.find_by(id: params[:id]), status: :ok
  end

  def self
    render json: current_devise_api_user, status: :ok
  end
end
