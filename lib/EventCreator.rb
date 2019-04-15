

class EventCreator
	attr_accessor :title, :duration, :start_date, :attendees, :event_name

	def initialize
		 get_title
		 get_duration
		 get_date
		 get_attendees
		 @event_name = Event.new(@start_date, @duration, @title, @attendees)
		 @event_name.to_s
	end

	def get_title
		puts "quel titre pour l'event ?"
		puts " >"
		 @title = gets.chomp
	end

	def get_duration
		puts "quel durée pour l'event ?"
		puts " >"
		return @duration = gets.chomp
	end

	def get_date
		puts "c'est quand ?"
		puts " >"
		return @start_date = gets.chomp
	end

	def get_attendees
		puts " qui en invité ? on a besoin de leur email"
		puts " >"
		email = gets.chomp
		new_email = email.gsub(";", "")
		email_array = new_email.split(" ")
		return @attendees = email_array

	end
end



