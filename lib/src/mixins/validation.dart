class Validation {

  
  String validateName(String value) {
    if(value.isEmpty) {
      return 'Nama Lengkap Harus Diisi';
    } 
    return null;
  }

  String validateTempatLahir(String value) {
    if(value.isEmpty) {
      return 'Tempat Lahir Harus Diisi';
    }
    return null;
  }

  String validateTanggalLahir(String value) {
    if(value.isEmpty) {
      return 'Tanggal Lahir Harus Diisi';
    }
    return null;
  }

  String validateJenisKelamin(String value) {
    if(value.isEmpty) {
      return 'Jenis Kelamin Harus Diisi';
    }
    return null;
  }

  String validateAlamat(String value) {
    if(value.isEmpty) {
      return 'Alamat Harus Diisi';
    }
    return null;
  }

  String validateEmail(String value) {
    if(!value.contains('@')) {
      return 'Email tidak valid';
    }
    return null;
  }

  String validateNoHp(String value) {
    if(value.isEmpty) {
      return 'Nomer HP Harus Diisi';
    }
    return null;
  }

  String validateUsername(String value) {
    if(value.isEmpty) {
      return 'Username Harus Diisi';
    }
    return null;
  }

  //Fungsi validatePassword > Nama Fungsi Bebas
  String validatePassword(String value) {
    if(value.length < 4) {
      return 'Password Minimal 4 Karakter';
    }
    return null;
  }

}