class Bill < ActiveRecord::Base
  attr_accessible :consumption, :date, :period_from, :period_to, :value, :contract_id, :meterId, :enterpriseId, :year
  belongs_to :contracts
end
