# frozen_string_literal: true

class BaseService
  include ActiveModel::Validations

  attr_reader :params, :current_user

  def initialize(params)
    @params = params
    @current_user = params[:current_user]
  end

  def call
    return unless valid?

    { items: items, message: message }
  end

  def success?
    errors.blank?
  end
end
