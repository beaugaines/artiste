class Image < ActiveRecord::Base
  belongs_to :artwork
  attachment :file
end
