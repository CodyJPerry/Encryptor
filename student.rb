class Student 
	attr_accessor :first_name, :last_name, :primary_phone_number

	def introduction(target)
		puts "Hi #{target}, I'm #{first_name}!"
	end

	def favorite_number 
		7
	end
end

cody = Student.new
cody.first_name = "Cody"
cody.introduction("Bob")
puts "Cody's favorite number is #{cody.favorite_number}."