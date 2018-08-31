class Superhero < ApplicationRecord

	def self.search(search)
		if search
			where(["superpower_id LIKE ?", "%#{search}%"])
		else
			all
		end
	end

end

