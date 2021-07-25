# program Menghitung gaji
def main()
    puts "        Program Menghitung Gaji buat fanny by hmei7";
    puts "        -----------------------";
    print "Nama Lengkap : ";
    nama = gets.chomp
    print "Golongan     : ";
    gol = gets.chomp
    print "Jam Kerja    : ";
    jam = gets.chomp.to_i
    if jam > 48
        a = jam-48;
        b = 48*10000;
        c = (a*15000)+b;
    else
        a = 0;
        c = jam*10000;
    end
    puts "\n        Detail Penggajian Karyawan";
    puts "        --------------------------";
    puts "Nama Lengkap : #{nama}";
    puts "Golongan     : #{gol}";
    puts "Jam Kerja    : #{jam}";
    puts "Lemburan     : #{a} jam";
    puts "Upah         : #{c}";
    print "ulang lagi(y/n) : "
    ulang = gets.chomp
    if ulang == "n" or ulang == "N"
        puts "program berakhir"
    elsif ulang == "y" or ulang == "Y"
        main
    else
        main
    end
end
main
