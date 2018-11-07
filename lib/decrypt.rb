require './lib/enigma'
require 'pry'

  enigma = Enigma.new
  input_file = File.open(ARGV[0], "r")
  output_file = File.open(ARGV[1], "w")
  key = ARGV[2]
  date = ARGV[3]

  message = input_file.read.chomp
  decrypted = enigma.decrypt(message, key, date)

  output_file.write(decrypted[:decryption])
  puts "Created #{ARGV[1]} with the key #{decrypted[:key]} and date #{decrypted[:date]}"
