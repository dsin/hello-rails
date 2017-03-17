class Article < ActiveRecord::Base
	# , dependent: :destroy : delete associated objects
	has_many :comments, , dependent: :destroy

	validates :title, presence: true,
                    length: { minimum: 5 }
end
