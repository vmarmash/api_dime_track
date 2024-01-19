# frozen_string_literal: true

module Categories
  class Base < BaseService
    def category
      @category ||= current_user.categories.find_by(id: params['id'])
    end

    def categories
      @categories ||= current_user.categories
    end

    def call
      { items: items, message: message }
    end
  end
end
