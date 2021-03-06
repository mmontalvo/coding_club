require 'date'

class Onfidoer

	attr_accessor :first_name, :last_name, :dept

	def initialize(first_name, last_name, dept, team, join_date)
		@first_name = first_name
		@last_name = last_name
		@join_date = join_date
		@team = team
		@dept = dept 
	end

	def display_name
		puts "#{@first_name}\t#{@last_name.upcase}" #\t is for tab
	end

	def display_attributes
		puts "#{@join_date}\t#{@team}\t#{@dept}"
	end

	def days_with_company
		today = Date::today
		join_date = Date.parse(@join_date)#.strftime("%Y-%m-%d")
		time_with_company = (today - join_date).to_i
	end

	def year_joined
		date = Date.parse(@join_date)
		puts date.year
	end
end

