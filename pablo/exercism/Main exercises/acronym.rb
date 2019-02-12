class Acronym
	def self.abbreviate(str)
	
	str.split(/\W+/).map {|name| name[0] }.join.upcase
		
	end
end
