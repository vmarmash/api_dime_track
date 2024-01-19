class CostSerializer < ActiveModel::Serializer
  include ActionView::Helpers::DateHelper

  attributes :id, :name, :amount, :currency, :owner, :created_date

  def owner
    object.user.name.presence || object.user.email.presence
  end

  def created_date
    "#{time_ago_in_words(object.created_at)} ago"
  end
end
