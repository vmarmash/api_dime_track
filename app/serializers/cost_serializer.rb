class CostSerializer < ActiveModel::Serializer
  include ActionView::Helpers::DateHelper

  attributes :id, :name, :amount, :currency

  attribute :hrn_amount do
    object.hrn_amount.round
  end

  attribute :usd_amount do
    object.usd_amount.round
  end

  attribute :eur_amount do
    object.eur_amount.round
  end

  attribute :owner do
    object.user.name.presence || object.user.email.presence
  end

  attribute :created_date do
    "#{time_ago_in_words(object.created_at)} ago"
  end

  attribute :categories

  has_many :categories
end
