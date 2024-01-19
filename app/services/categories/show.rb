module Categories
  class Show < Base
    def items
      category
    end

    def message
      return 'Success' if category.present?

      'blank'
    end
  end
end