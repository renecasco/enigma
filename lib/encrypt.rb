require './lib/enigma'

  input_file = File.open(ARGV[0], "r")
  message = input_file.read.chomp

  enigma = Enigma.new
  encrypted = enigma.encrypt(message, "82648")

  output_file = File.open(ARGV[1], "w")
  output_file.write(encrypted[:encryption])

  puts "Created #{ARGV[1]} with the key #{encrypted[:key]} and date #{encrypted[:date]}"
