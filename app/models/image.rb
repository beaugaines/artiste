class Image < ActiveRecord::Base
  belongs_to :artwork
  attachment :file
  acts_as_list scope: :artwork
  default_scope { order(:position) }
end
