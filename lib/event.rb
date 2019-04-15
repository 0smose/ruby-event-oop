

class Event
	attr_accessor :start_date, :duration, :title, :attendees

	def initialize(date_to_save, durée, titre, email)
		@start_date = Time.parse("#{date_to_save}")
		@duration = durée
		@title = titre
		@attendees = Array.new << email 
	end

	def postpone_24h
		@start_date = @start_date + (60 *60 *24)
		puts @start_date
	end

	def end_date
		return @start_date + @duration
	end

	def is_past?
		if @start_date < Time.now
			return true
		else return false
		end
	end

	def is_future?
		if @start_date > Time.now
			return true
		else return false
		end
	end

	def is_soon?
		if (Time.now < @start_date) && (@start_date < Time.now + (30 * 60))
			return true
		else return false
		end
	end

	def to_s
		puts " >titre : #{@title}"
		puts ">Date de début : #{@start_date}"
		puts ">Durée : #{@duration}"
		puts ">Invités : #{@attendees.join(", ")}"
	end

end