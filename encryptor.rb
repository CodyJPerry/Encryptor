class Encryptor
	def cipher(rotation) 
		characters = (' '..'z').to_a
		rotated_characters = characters.rotate(rotation)
		Hash[characters.zip(rotated_characters)]
	end

	def encrypt_letter(letter, rotation) 
		rotation = 13
		cipher_for_rotation = cipher(rotation)
		cipher_for_rotation[letter]
	end

	def encrypt(string, rotation)
		#1. Cut the string into letters
		letters = string.split("")
		#2. Encrypt those letters one at a time
		results = []
		letters.collect do |letter| 
			encrypted_letter = results.push(encrypt_letter(letter, rotation))
			
		end
		#3. Join the results back together into one string
		results.join("")
	end

	def decrypt_letter(letter) 
		lowercase_letter = letter.downcase
		cipher[lowercase_letter]
	end

	def decrypt(string) 
		decrypt_letters = string.split("")
		decrypt_results = []
		decrypt_letters.collect do |letter|
			decrypted_letter = decrypt_results.push(decrypt_letter(letter))
	end
	decrypt_results.join("")
end

end