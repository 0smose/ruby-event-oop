

class User
	attr_accessor :email, :age 
	@@user_count = 0
	@@all_users = []

	def initialize(email_to_save, age)
		@email = email_to_save
		@age = age
		@@user_count = @@user_count + 1
		@@all_users << self
	end

	def self.count
		return @@user_count
	end


 	def self.all
 		return @@all_users
 	end


	def self.find_by_email(email_truc)
		@@all_users.each do |i|
			if i.email == email_truc
				return puts " voici l'age du user #{i.age}"
			end
		end
	end
end



#binding.pry
#puts "end of file"
