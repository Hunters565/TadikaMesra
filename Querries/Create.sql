CREATE TABLE Guru(
    ID_Guru CHAR(4) PRIMARY KEY NOT NULL,
    Nama_Guru VARCHAR(30),
    Alamat VARCHAR(50),
    No_HP CHAR(14),
    Jenis_Kelamin CHAR(10)
);

CREATE TABLE Kelas (
    ID_Kelas CHAR(4) PRIMARY KEY NOT NULL,
    Nama_Kelas VARCHAR(20),
    ID_Guru CHAR(4), FOREIGN KEY(ID_Guru) REFERENCES Guru(ID_Guru)    
);

CREATE TABLE Siswa(
    ID_Siswa CHAR(10) PRIMARY KEY NOT NULL,
    ID_Kelas CHAR(4), FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    Nama_Siswa VARCHAR(20),
    Jenis_Kelamin VARCHAR(10),
    Nama_Ortu VARCHAR(30),
    Alamat VARCHAR(50),
    No_HP_Orangtua CHAR(14)
);

CREATE TABLE Mapel(
    ID_Mapel CHAR(4) PRIMARY KEY NOT NULL,
    Nama_Mapel VARCHAR(20),
    ID_Kategori CHAR(4)
);

CREATE TABLE KelasMapel (
    ID_Kelas CHAR(4), FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    ID_Mapel CHAR(4), FOREIGN KEY (ID_Mapel) REFERENCES Mapel(ID_Mapel),
    ID_Guru CHAR(4), FOREIGN KEY(ID_Guru) REFERENCES Guru(ID_Guru)    
);

CREATE TABLE Foto(
    ID_Foto CHAR(10) PRIMARY KEY NOT NULL,
    Nama_Foto Char(20),
    image BLOB NOT NULL
);

CREATE TABLE Absensi (
    ID_Absensi INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ID_Siswa CHAR(10) NOT NULL, FOREIGN KEY (ID_Siswa) REFERENCES Siswa(ID_Siswa),
    ID_Kelas CHAR(4) NOT NULL, FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    ID_Mapel CHAR(4) NOT NULL, FOREIGN KEY (ID_Mapel) REFERENCES Mapel(ID_Mapel),
    Tanggal DATE NOT NULL,
    Keterangan ENUM('Hadir', 'Tidak Hadir', 'Izin', 'Sakit') NOT NULL,
    UNIQUE (ID_Siswa, ID_Mapel, Tanggal)
);

CREATE TABLE Makanan(
    ID_Makanan CHAR(10) PRIMARY KEY NOT NULL,
    Nama_Makanan CHAR(20)
);

CREATE TABLE Transaksi(
    ID_Transaksi CHAR(10) PRIMARY KEY NOT NULL,
    Date DATE NOT NULL,
    ID_Kelas CHAR(4) NOT NULL, FOREIGN KEY (ID_Kelas) REFERENCES Kelas(ID_Kelas),
    ID_Foto CHAR(10), FOREIGN KEY (ID_Foto) REFERENCES Foto (ID_Foto),
    ID_Makanan CHAR(10), FOREIGN KEY (ID_Makanan) REFERENCES Makanan (ID_Makanan),
    Deskripsi_Transaksi VARCHAR (200),
    Catatan_Guru VARCHAR (200)
);

INSERT INTO Guru (ID_Guru, Nama_Guru, Alamat, No_HP, Jenis_Kelamin) 
VALUES  ('G001', 'John Smith', 'Jakarta', '081234567890', 'Laki-laki'),
        ('G002', 'Jane Doe', 'Surabaya', '081234567891', 'Perempuan'),
        ('G003', 'Michael Johnson', 'Bandung', '081234567892', 'Laki-laki'),
        ('G004', 'Emily Brown', 'Semarang', '081234567893', 'Perempuan'),
        ('G005', 'Joshua Davis', 'Medan', '081234567894', 'Laki-laki'),
        ('G006', 'Ashley Miller', 'Bali', '081234567895', 'Perempuan'),
        ('G007', 'Matthew Wilson', 'Yogyakarta', '081234567896', 'Laki-laki'),
        ('G008', 'Olivia Moore', 'Padang', '081234567897', 'Perempuan'),
        ('G009', 'Jacob Taylor', 'Palembang', '081234567898', 'Laki-laki'),
        ('G010', 'Isabella Anderson', 'Makassar', '081234567899', 'Perempuan');

INSERT INTO Kelas (ID_Kelas, Nama_Kelas, ID_Guru) 
VALUES  ('K001', '1A', 'G001'),
        ('K002', '1B', 'G002'),
        ('K003', '2A', 'G003'),
        ('K004', '2B', 'G004'),
        ('K005', '3A', 'G005'),
        ('K006', '3B', 'G006'),
        ('K007', '4A', 'G007'),
        ('K008', '4B', 'G008'),
        ('K009', '5A', 'G009'),
        ('K010', '5B', 'G010');

INSERT INTO Siswa (ID_Siswa, ID_Kelas, Nama_Siswa, Jenis_Kelamin, Nama_Ortu, Alamat, No_HP_Orangtua) 
VALUES ('S001', 'K001', 'S1K1', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S002', 'K001', 'S2K1', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S003', 'K001', 'S3K1', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S004', 'K001', 'S4K1', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S005', 'K001', 'S5K1', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081231231231'),
       ('S006', 'K001', 'S6K1', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S007', 'K001', 'S7K1', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S008', 'K001', 'S8K1', 'Perempuan', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S009', 'K001', 'S9K1', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S010', 'K001', 'S10K1', 'Perempuan', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S011', 'K002', 'S1K2', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S012', 'K002', 'S2K2', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S013', 'K002', 'S3K2', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S014', 'K002', 'S4K2', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S015', 'K002', 'S5K2', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S016', 'K002', 'S6K2', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S017', 'K002', 'S7K2', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S018', 'K002', 'S8K2', 'Perempuan', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S019', 'K002', 'S9K2', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S020', 'K002', 'S10K2', 'Perempuan', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S021', 'K003', 'S1K3', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S022', 'K003', 'S2K3', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S023', 'K003', 'S3K3', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S024', 'K003', 'S4K3', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S025', 'K003', 'S5K3', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S026', 'K003', 'S6K3', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S027', 'K003', 'S7K3', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S028', 'K003', 'S8K3', 'Perempuan', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S029', 'K003', 'S9K3', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S030', 'K003', 'S10K3', 'Perempuan', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S031', 'K004', 'S1K4', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S032', 'K004', 'S2K4', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S033', 'K004', 'S3K4', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S034', 'K004', 'S4K4', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S035', 'K004', 'S5K4', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S036', 'K004', 'S6K4', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S037', 'K004', 'S7K4', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S038', 'K004', 'S8K4', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S039', 'K004', 'S9K4', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S040', 'K004', 'S10K4', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S041', 'K005', 'S1K5', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S042', 'K005', 'S2K5', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S043', 'K005', 'S3K5', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S044', 'K005', 'S4K5', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S045', 'K005', 'S5K5', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S046', 'K005', 'S6K5', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S047', 'K005', 'S7K5', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S048', 'K005', 'S8K5', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S049', 'K005', 'S9K5', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S050', 'K005', 'S10K5', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S051', 'K006', 'S1K6', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S052', 'K006', 'S2K6', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S053', 'K006', 'S3K6', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S054', 'K006', 'S4K6', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S055', 'K006', 'S5K6', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S056', 'K006', 'S6K6', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S057', 'K006', 'S7K6', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S058', 'K006', 'S8K6', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S059', 'K006', 'S9K6', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S060', 'K006', 'S10K6', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S071', 'K007', 'S1K7', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S072', 'K007', 'S2K7', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S073', 'K007', 'S3K7', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S074', 'K007', 'S4K7', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S075', 'K007', 'S5K7', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S076', 'K007', 'S6K7', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S077', 'K007', 'S7K7', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S078', 'K007', 'S8K7', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S079', 'K007', 'S9K7', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S080', 'K007', 'S10K7', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S081', 'K008', 'S1K8', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S082', 'K008', 'S2K8', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S083', 'K008', 'S3K8', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S084', 'K008', 'S4K8', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S085', 'K008', 'S5K8', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S086', 'K008', 'S6K8', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S087', 'K008', 'S7K8', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S088', 'K008', 'S8K8', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S089', 'K008', 'S9K8', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S090', 'K008', 'S10K8', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S091', 'K009', 'S1K9', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S092', 'K009', 'S2K9', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S093', 'K009', 'S3K9', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S094', 'K009', 'S4K9', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S095', 'K009', 'S5K9', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S096', 'K009', 'S6K9', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S097', 'K009', 'S7K9', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S098', 'K009', 'S8K9', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S099', 'K009', 'S9K9', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S100', 'K009', 'S10K9', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890'),
       ('S101', 'K010', 'Siswa SKelasK0', 'Laki-laki', 'Ortu Siswa 1', 'Alamat Siswa 1', '081234567890'),
       ('S102', 'K010', 'Siswa SKelasK0', 'Perempuan', 'Ortu Siswa 2', 'Alamat Siswa 2', '081234567890'),
       ('S103', 'K010', 'Siswa SKelasK0', 'Laki-laki', 'Ortu Siswa 3', 'Alamat Siswa 3', '081234567890'),
       ('S104', 'K010', 'Siswa SKelasK0', 'Perempuan', 'Ortu Siswa 4', 'Alamat Siswa 4', '081234567890'),
       ('S105', 'K010', 'Siswa SKelasK0', 'Laki-laki', 'Ortu Siswa 5', 'Alamat Siswa 5', '081234567890'),
       ('S106', 'K010', 'Siswa SKelasK0', 'Perempuan', 'Ortu Siswa 6', 'Alamat Siswa 6', '081234567890'),
       ('S107', 'K010', 'Siswa SKelasK0', 'Laki-laki', 'Ortu Siswa 7', 'Alamat Siswa 7', '081234567890'),
       ('S108', 'K010', 'Siswa SKelasK0', 'Laki-laki', 'Ortu Siswa 8', 'Alamat Siswa 8', '081234567890'),
       ('S109', 'K010', 'Siswa SKelasK0', 'Laki-laki', 'Ortu Siswa 9', 'Alamat Siswa 9', '081234567890'),
       ('S110', 'K010', 'Siswa SKelasK0', 'Laki-laki', 'Ortu Siswa 10', 'Alamat Siswa 10', '081234567890');

INSERT INTO Mapel (ID_Mapel, Nama_Mapel, ID_Kategori) 
VALUES  ('M001', 'Matematika', 'A'),
        ('M002', 'Bahasa Inggris', 'A'),
        ('M003', 'Bahasa Indonesia', 'A'),
        ('M004', 'Fisika', 'B'),
        ('M005', 'Kimia', 'B'),
        ('M006', 'Biologi', 'B'),
        ('M007', 'Sejarah', 'C'),
        ('M008', 'Geografi', 'C'),
        ('M009', 'Sosiologi', 'C'),
        ('M010', 'Ekonomi', 'C');

INSERT INTO KelasMapel (ID_Kelas, ID_Mapel, ID_Guru) 
VALUES  ('K001', 'M001', 'G001'), ('K001', 'M002', 'G002'),
        ('K001', 'M003', 'G003'), ('K002', 'M004', 'G004'),
        ('K002', 'M005', 'G005'), ('K002', 'M006', 'G006'),
        ('K003', 'M007', 'G007'), ('K003', 'M008', 'G008'),
        ('K003', 'M009', 'G009'), ('K004', 'M010', 'G010'),
        ('K005', 'M001', 'G001'), ('K005', 'M002', 'G002'),
        ('K005', 'M003', 'G003'), ('K006', 'M004', 'G004'),
        ('K006', 'M005', 'G005'), ('K006', 'M006', 'G006'),
        ('K007', 'M007', 'G007'), ('K007', 'M008', 'G008'),
        ('K007', 'M009', 'G009'), ('K008', 'M010', 'G010'),
        ('K009', 'M001', 'G001'), ('K009', 'M002', 'G002'),
        ('K009', 'M003', 'G003'), ('K010', 'M004', 'G004'),
        ('K010', 'M005', 'G005'), ('K010', 'M006', 'G006');

INSERT INTO Foto (ID_Foto, Nama_Foto, image)
VALUES  ('F001', 'Adam Smith', 'image_data_1'),
        ('F002', 'Emily Johnson', 'image_data_2'),
        ('F003', 'Michael Brown', 'image_data_3'),
        ('F004', 'Emma Davis', 'image_data_4'),
        ('F005', 'Joshua Miller', 'image_data_5'),
        ('F006', 'Madison Wilson', 'image_data_6'),
        ('F007', 'Matthew Moore', 'image_data_7'),
        ('F008', 'Olivia Anderson', 'image_data_8'),
        ('F009', 'Jacob Taylor', 'image_data_9'),
        ('F010', 'Isabella Thomas', 'image_data_10');

INSERT INTO Absensi (ID_Siswa, ID_Kelas, ID_Mapel, Tanggal, Keterangan)
VALUES  ('S001', 'K001', 'M001', '2022-01-01', 'Hadir'),
        ('S002', 'K001', 'M001', '2022-01-02', 'Tidak Hadir'),
        ('S003', 'K001', 'M002', '2022-01-03', 'Izin'),
        ('S004', 'K001', 'M002', '2022-01-04', 'Hadir'),
        ('S005', 'K002', 'M003', '2022-01-05', 'Sakit'),
        ('S006', 'K002', 'M003', '2022-01-06', 'Hadir'),
        ('S007', 'K003', 'M004', '2022-01-07', 'Tidak Hadir'),
        ('S008', 'K003', 'M004', '2022-01-08', 'Hadir'),
        ('S009', 'K004', 'M005', '2022-01-09', 'Izin'),
        ('S010', 'K004', 'M005', '2022-01-10', 'Hadir');

INSERT INTO Makanan (ID_Makanan, Nama_Makanan)
VALUES  ('M001', 'Nasi Goreng'),
        ('M002', 'Mie Goreng'),
        ('M003', 'Nasi Uduk'),
        ('M004', 'Nasi Ayam'),
        ('M005', 'Nasi Kebuli'),
        ('M006', 'Mie Ayam'),
        ('M007', 'Nasi Campur'),
        ('M008', 'Sate Ayam'),
        ('M009', 'Sate Kambing'),
        ('M010', 'Nasi Pecel');

INSERT INTO Transaksi (ID_Transaksi, Date, ID_Kelas, ID_Foto, ID_Makanan, Deskripsi_Transaksi, Catatan_Guru)
VALUES  ('T000000001', '2022-01-01', 'K001', 'F001', 'M001', 'Siswa kelas 1A mengikuti ekskursi ke museum', 'Ekskursi ini sangat bermanfaat bagi pemahaman siswa tentang sejarah'),
        ('T000000002', '2022-01-02', 'K001', 'F002', 'M002', 'Siswa kelas 1A melakukan diskusi kelompok tentang materi fisika', 'Semua siswa aktif dan konsentrasi dalam diskusi'),
        ('T000000003', '2022-01-03', 'K001', 'F003', 'M003', 'Siswa kelas 1A mengikuti lomba menulis esai', 'Siswa mendapatkan peringkat ke-2 dalam lomba'),
        ('T000000004', '2022-01-01', 'K002', 'F004', 'M004', 'Siswa kelas 1B mengikuti olimpiade matematika', 'Siswa berhasil meraih medali perak'),
        ('T000000005', '2022-01-02', 'K002', 'F005', 'M005', 'Siswa kelas 1B melakukan praktikum kimia', 'Semua siswa menunjukkan hasil yang baik dalam praktikum'),
        ('T000000006', '2022-01-03', 'K002', 'F006', 'M006', 'Siswa kelas 1B mengikuti lomba lari', 'Siswa berhasil meraih peringkat ke-3 dalam lomba'),
        ('T000000007', '2022-01-01', 'K003', 'F007', 'M007', 'Siswa kelas 2A mengikuti seminar tentang teknologi', 'Siswa mendapatkan banyak informasi yang berguna dari seminar'),
        ('T000000008', '2022-01-02', 'K003', 'F008', 'M008', 'Siswa kelas 2A melakukan eksperimen biologi', 'Semua siswa menunjukkan hasil yang baik dalam eksperimen'),
        ('T000000009', '2022-01-03', 'K003', 'F009', 'M009', 'Siswa kelas 2A mengikuti lomba debat', 'Siswa berhasil meraih juara pertama dalam lomba'),
        ('T000000010', '2022-10-01', 'K004', 'F010', 'M001', 'Siswa K002 mengikuti lomba menyanyi di sekolah', 'Siswa K002 berhasil meraih juara 2 dalam lomba menyanyi sekolah hari ini'),
        ('T000000011', '2022-10-01', 'K004', 'F010', 'M001', 'Siswa K003 mengikuti kegiatan ekstrakurikuler seni', 'Siswa K003 tampil sangat apik dalam kegiatan ekstrakurikuler seni hari ini'),
        ('T000000012', '2022-10-02', 'K004', 'F010', 'M001', 'Siswa K001 mengikuti kegiatan ekstrakurikuler bola', 'Semua siswa K001 tampil cemerlang dalam kegiatan ekstrakurikuler bola hari ini'),
        ('T000000013', '2022-10-02', 'K005', 'F010', 'M001', 'Siswa K002 mengikuti lomba menyanyi di sekolah', 'Siswa K002 berhasil meraih juara 2 dalam lomba menyanyi sekolah hari ini'),
        ('T000000014', '2022-10-02', 'K005', 'F010', 'M001', 'Siswa K003 mengikuti kegiatan ekstrakurikuler seni', 'Siswa K003 tampil sangat apik dalam kegiatan ekstrakurikuler seni hari ini'),
        ('T000000015', '2022-10-03', 'K005', 'F010', 'M001', 'Siswa K001 mengikuti kegiatan ekstrakurikuler bola', 'Semua siswa K001 tampil cemerlang dalam kegiatan ekstrakurikuler bola hari ini'),
        ('T000000016', '2022-10-03', 'K006', 'F010', 'M001', 'Siswa K002 mengikuti lomba menyanyi di sekolah', 'Siswa K002 berhasil meraih juara 2 dalam lomba menyanyi sekolah hari ini'),
        ('T000000017', '2022-10-03', 'K006', 'F010', 'M001', 'Siswa K003 mengikuti kegiatan ekstrakurikuler seni', 'Siswa K003 tampil sangat apik dalam kegiatan ekstrakurikuler seni hari ini'),
        ('T000000018', '2022-01-15', 'K006', 'F001', 'M001', 'Siswa K001 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K001 tampak fokus dalam belajar'),
        ('T000000019', '2022-01-15', 'K007', 'F002', 'M002', 'Siswa K002 melakukan ekskul basket', 'Siswa K002 tampak aktif dalam ekskul basket'),
        ('T000000020', '2022-01-15', 'K007', 'F003', 'M003', 'Siswa K003 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K003 tampak fokus dalam belajar'),
        ('T000000021', '2022-01-16', 'K007', 'F004', 'M004', 'Siswa K001 melakukan ekskul seni', 'Siswa K001 tampak antusias dalam ekskul seni'),
        ('T000000022', '2022-01-16', 'K008', 'F005', 'M005', 'Siswa K002 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K002 tampak fokus dalam belajar'),
        ('T000000023', '2022-01-16', 'K008', 'F006', 'M006', 'Siswa K003 melakukan ekskul musik', 'Siswa K003 tampak aktif dalam ekskul musik'),
        ('T000000024', '2022-01-17', 'K008', 'F007', 'M007', 'Siswa K001 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K001 tampak fokus dalam belajar'),
        ('T000000025', '2022-01-17', 'K009', 'F008', 'M008', 'Siswa K002 melakukan ekskul olahraga', 'Siswa K002 tampak aktif dalam ekskul olahraga'),
        ('T000000026', '2022-01-17', 'K009', 'F009', 'M009', 'Siswa K003 melakukan kegiatan belajar mengajar di kelas', 'Semua siswa K003 tampak fokus dalam belajar'),
        ('T000000027', '2022-07-10', 'K009', 'F006', 'M006', 'Siswa kelas 1A melakukan diskusi dalam kelas tentang materi sejarah', 'Siswa kelas 1A cukup aktif dalam diskusi dan menunjukkan hasil yang baik dalam pemahaman materi'),
        ('T000000028', '2022-07-10', 'K010', 'F007', 'M007', 'Siswa kelas 1B melakukan presentasi dalam kelas tentang materi biologi', 'Siswa kelas 1B cukup kompeten dalam menyajikan presentasi dan memahami materi'),
        ('T000000029', '2022-07-10', 'K010', 'F008', 'M008', 'Siswa kelas 2A mengikuti lomba olimpiade matematika tingkat sekolah', 'Siswa kelas 2A berhasil meraih juara 2 dalam lomba olimpiade matematika'),
        ('T000000030', '2022-07-10', 'K010', 'F009', 'M009', 'Siswa kelas 2B melakukan eksperimen dalam kelas tentang materi kimia', 'Siswa kelas 2B cukup aktif dalam melakukan eksperimen dan menunjukkan hasil yang baik dalam pemahaman materi');










