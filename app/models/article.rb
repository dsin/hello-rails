class Article < ActiveRecord::Base
	# , dependent: :destroy : delete associated objects
	has_many :comments, dependent: :destroy

  slice :title, :as => :paged, :slice => {:maximum => 20}, :resize => {:width => 300}

	validates :title, presence: true,
                    length: { minimum: 5 }
end
