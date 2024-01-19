# frozen_string_literal: true

module Json
  class Base
    include Pagy::Backend

    attr_reader :service, :request, :current_user, :params, :paginate

    def initialize(service, params, paginate)
      @service = service
      @params = params
      @paginate = paginate
      @request =  params[:request]
      @current_user = params[:current_user]
    end
  end
end
