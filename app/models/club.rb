class Club < ActiveRecord::Base
  belongs_to :user
  has_many :user, through: :subscription
  has_many :comment
end
