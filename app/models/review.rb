class Review < ActiveRecord::Base
  belongs_to :artists

  validates :critique, :presence => true
end
