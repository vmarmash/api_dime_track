# frozen_string_literal: true

class TokensController < Devise::Api::TokensController
  def sign_in
    super()
  end

  private

  def sign_up_params
    params.permit(%i[phone name], *resource_class.authentication_keys,
                  *::Devise::ParameterSanitizer::DEFAULT_PERMITTED_ATTRIBUTES[:sign_up]).to_h
  end
end
