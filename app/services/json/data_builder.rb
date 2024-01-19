# frozen_string_literal: true

module Json
  class DataBuilder
    attr_reader :params, :service_class, :result

    def initialize(service, params)
      @service_class = service
      @params = params
    end

    def call
      service = service_class.new(params)
      service.validate
      @result = service.call

      return structured_answer if service.success?

      render_errors(service)
    end

    def structured_answer
      {
        message: result[:message],
        items:   result[:items]
      }
    end

    def render_errors(service)
      { errors: service.errors.map { { attr: _1.attribute, message: _1.message } } }
    end
  end
end
