<?php
// koneksi ke database
$conn = mysqli_connect("localhost", "root", "", "phpdasar");


function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while( $row = mysqli_fetch_assoc($result) ) {
        $rows[] = $row;
    }
    return $rows;
}


function tambah($data) {
    global $conn;

    $nama = htmlspecialchars($data["nama"]);
	$nowa = htmlspecialchars($data["nohp"]);
	$email = htmlspecialchars( $data["email"]);
	$naik = htmlspecialchars($data["turun"]);
	$turun = htmlspecialchars($data["naik"]);
	$tglberangkat = htmlspecialchars($data["berangkatnaik"]);
	$tglturun = htmlspecialchars($data["berangkatturun"]);

    // upload gambar
    $fotoktp = upload();
    if( !$fotoktp ) {
        return false;
    }
    
	$query = "INSERT INTO pendakian
    VALUES
    ('', '$nama','$nowa', '$email', '$fotoktp', ' $naik', '
    $turun', '$tglberangkat', ' $tglturun')
    ";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);

}

function upload() {
    

    $namaFile = $_FILES['ktp']['name'];
    $ukuranFile = $_FILES['ktp']['size'];
    $error = $_FILES['ktp']['error'];
    $tmpName = $_FILES['ktp']['tmp_name'];

    // cek apakah tidak ada gambar yang diupload
    if( $error === 4 ){
        echo "<script>
                alert('Upload KTP Terlebih Dahulu!');
                </script>";
            return false;
    }

    // cek apakah yang diupload adalah gambar
    $ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
    $ekstensiGambar = explode('.', $namaFile);
    $ekstensiGambar = strtolower(end($ekstensiGambar));
    if ( !in_array($ekstensiGambar, $ekstensiGambarValid) ) {
        echo "<script>
                alert('Yang anda upload bukan gambar!');
                </script>";
            return false;
    }

    // cek jika ukurannya terlalu besar
    if( $ukuranFile > 1000000 ) {
        echo "<script>
                alert('Ukuran Gambar Terlalu Besar!');
                </script>";
            return false;
    }

    // lolos pengecekan, gambar siap diupload
    // ganerate nama gambar baru
    $namaFileBaru = uniqid();
    $namaFileBaru .= '.';
    $namaFileBaru .= $ekstensiGambar;
    

    move_uploaded_file($tmpName, 'img/'.$namaFileBaru);

    return $namaFileBaru;

}


function hapus($id) {
    global $conn;
    mysqli_query($conn, "DELETE FROM pendakian WHERE id = $id");
    return mysqli_affected_rows($conn);

}

function ubah($data){
    global $conn;

    $id = $data["id"];
    $nama = htmlspecialchars($data["nama"]);
	$nowa = htmlspecialchars($data["nohp"]);
	$email = htmlspecialchars( $data["email"]);
	$turun = htmlspecialchars($data["turun"]);
	$naik = htmlspecialchars($data["naik"]);
	$berangkatnaik = htmlspecialchars($data["berangkatnaik"]);
	$berangkatturun = htmlspecialchars($data["berangkatturun"]);
    $gambarLama = htmlspecialchars($data["gambarLama"]);
    
    // cek apakah admin pilih gambar baru atau tidak

    if( $_FILES['ktp']['error'] === 4 ) {
        $ktp = $gambarLama;
    } else {
        $ktp = upload();
    }
	$query = "UPDATE pendakian SET
                nama = '$nama',
                nohp = '$nowa',
                email = '$email',
                ktp = '$ktp',
                turun = '$naik',
                naik = '$turun',
                berangkatnaik = '$berangkatnaik',
                berangkatturun = '$berangkatturun'
            WHERE id = $id
                ";

    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);

}

function cari($keyword) {
    $query = "SELECT * FROM pendakian
             WHERE
        nama LIKE '%$keyword%' OR
        nohp LIKE '%$keyword%' OR
        email LIKE '%$keyword%' OR
        turun LIKE '%$keyword%' OR
        naik LIKE '%$keyword%' OR
        berangkatnaik LIKE '%$keyword%' OR
        berangkatturun LIKE '%$keyword%' 
        ";
    return query($query);
}




?>