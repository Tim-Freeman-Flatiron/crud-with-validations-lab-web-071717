class Song < ActiveRecord::Base
	validates :title, presence: true
	validates_uniqueness_of :title, :scope => :artist_name
	validates :release_year, if: :released?, inclusion: {in: 1..Date.today.year}

end
