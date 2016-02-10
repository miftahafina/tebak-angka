# Permainan Tebak Angka
# Oleh: Miftah Afina
# Dipelajari dari: Head First Ruby (O'reilly)

# Memasukkan nama
puts "Selamat datang di permainan Tebak Angka."
print "Nama Anda: "

input_nama = gets
nama = input_nama.chomp

puts "Selamat bermain, #{nama}!"

# Generate nomor
puts "Saya memiliki angka antara 1 - 100."
puts "Dapatkah Anda menebaknya?"
target = rand(100) + 1
puts "(kunci: #{target})"

# Hitung berapa kali tebakan
coba = 0

# Apakah tebakan sudah benar
tertebak = false

# Batas menebak
batas = 10

# Perulangan kesempatan menebak jika masih salah dan percobaan < 10
while coba < batas && tertebak == false

    # Pemain menebak
    print "Tebakan saya: "

    input_tebakan = gets
    tebakan = input_tebakan.to_i
    puts "#{input_tebakan}"

    # Percobaan bertambah
    coba += 1

    # Pengecekan tebakan dengan target
    if tebakan > target
        puts "Tebakan Anda terlalu TINGGI."
        puts "Sisa kesempatan #{batas - coba}"
    elsif tebakan < target
        puts "Tebakan Anda terlalu RENDAH."
        puts "Sisa kesempatan #{batas - coba}"
    elsif tebakan == target
        puts "Selamat, #{nama}! Tebakan Anda benar setelah #{coba} kali menebak."
        tertebak = true
    end
end

# Jika tidak berhasil menebak
unless tertebak
    puts "Maaf, tebakan Anda salah. Angka yang benar adalah #{target}."
end
