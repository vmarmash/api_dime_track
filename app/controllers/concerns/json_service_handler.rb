# frozen_string_literal: true

module JsonServiceHandler
  def run(service, paginate: false, custom_serializer: nil)
    params.merge!({ current_user:      current_devise_api_user,
                    request:           request,
                    custom_serializer: custom_serializer })

    render json: Json::ResponseBuilder.new(service, params, paginate).call
  end
end
