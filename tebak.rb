# Permainan Tebak Angka
# Oleh: Miftah Afina
# Dipelajari dari: Head First Ruby (O'reilly)

# Memasukkan nama
puts "Selamat datang di permainan Tebak Angka"
puts "Nama Anda: "

input_nama = gets
nama = input_nama.chomp

puts "Selamat bermain, #{nama}!"

# Generate nomor
puts "Saya memiliki angka antara 1 - 100."
puts "Dapatkah Anda menebaknya?"
target = rand(100) + 1
puts "(kunci: #{target})"
