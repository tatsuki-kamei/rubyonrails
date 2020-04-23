class PlofileImage < ApplicationRecord

	attachment :image
	belongs_to :users
end
