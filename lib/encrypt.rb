require './lib/enigma'

  enigma = Enigma.new
  input_file = File.open(ARGV[0], "r")
  output_file = File.open(ARGV[1], "w")

  message = input_file.read.chomp
  encrypted = enigma.encrypt(message)

  output_file.write(encrypted[:encryption])
  puts "Created #{ARGV[1]} with the key #{encrypted[:key]} and date #{encrypted[:date]}"
