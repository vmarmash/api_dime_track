module Categories
  class Index < Base
    def items
      categories
    end

    def message
      return 'Success' if categories.present?

      'blank'
    end
  end
end