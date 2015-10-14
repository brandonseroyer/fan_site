class Artist < ActiveRecord::Base
  belongs_to :genre

  validates :name, :presence => true
  validates :review, :presence => true

  default_scope {order("name")}

end
