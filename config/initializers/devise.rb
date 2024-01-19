Devise.setup do |config|
  config.api.configure do |api|
    # Access Token
    api.access_token.expires_in = 3.day
    api.access_token.expires_in_infinite = ->(_resource_owner) { false }
    api.access_token.generator = ->(_resource_owner) { Devise.friendly_token(60) }


    # Refresh Token
    api.refresh_token.enabled = true
    api.refresh_token.expires_in = 1.week
    api.refresh_token.generator = ->(_resource_owner) { Devise.friendly_token(60) }
    api.refresh_token.expires_in_infinite = ->(_resource_owner) { false }

    # Sign up
    api.sign_up.enabled = true

    # Authorization
    api.authorization.key = 'Authorization'
    api.authorization.scheme = 'Bearer'
    api.authorization.location = :both # :header or :params or :both
    api.authorization.params_key = 'access_token'


    # Base classes
    api.base_token_model = 'Devise::Api::Token'
    api.base_controller = '::DeviseController'


    # After successful callbacks
    api.after_successful_sign_in = ->(_resource_owner, _token, _request) { }
    api.after_successful_sign_up = ->(_resource_owner, _token, _request) { }
    api.after_successful_refresh = ->(_resource_owner, _token, _request) { }
    api.after_successful_revoke = ->(_resource_owner, _token, _request) { }


    # Before callbacks
    api.before_sign_in = ->(_params, _request, _resource_class) { }
    api.before_sign_up = ->(_params, _request, _resource_class) { }
    api.before_refresh = ->(_params, _request, _resource_class) { }
    api.before_revoke = ->(_params, _request, _resource_class) { }
  end
end