# frozen_string_literal: true

module Json
  class ResponseBuilder < Base
    attr_reader :data, :pagy, :service_response

    def call
      @data = paginated_data

      {
        message:    service_response[:message],
        errors:     service_response[:errors],
        data:       data,
        pagination: pagy_metadata,
        resource:   resource
      }.compact
    end

    def paginated_data
      @service_response = Json::DataBuilder.new(service, params).call
      return if service_response[:errors].present?
      return service_response[:items] unless paginate

      @pagy, records = pagy_array(service_response[:items])
      records
    end

    def pagy_metadata
      return if pagy.blank?

      {
        count:        pagy.count,
        current_page: pagy.page,
        pages:        pagy.pages
      }
    end

    def resource
      request.url
    end
  end
end
