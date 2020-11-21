import 'package:flutter/material.dart';
import '../mixins/validation.dart';

class RegisterScreen extends StatefulWidget {
  createState(){
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with Validation {

  final formKey = GlobalKey<FormState>();

  String name = '';
  String tempatLahir = '';
  String tanggalLahir = '';
  String email = '';
  String noHp = '';
  String username = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form( 
        key: formKey,
        child:Column(
          children: [
            nameField(),
            tanggal_lahirField(),
            emailField(),
            no_hpField(),
            usernameField(),
            passwordField(),
            registerButton(),
          ],
        )
      ),
    );
  }

  Widget nameField() {
    //Membuat Text Input
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nama Lengkap' //Dengan Label Nama Lengkap
      ),
      validator: validateName,
      onSaved: (String value) {
        name = value;
      },
      //Akan berisi validation
    );
  }

   Widget tanggal_lahirField() {
    //Membuat Text Input
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Tanggal Lahir' //Dengan Label Nama Lengkap
      ),
      validator: validateTanggalLahir,
      onSaved: (String value) {
        tanggalLahir = value;
      },
      //Akan berisi validation
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget no_hpField() {
    //Membuat Text Input
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'No HP' //Dengan Label Nama Lengkap
      ),
      validator: validateNoHp,
      onSaved: (String value) {
        noHp = value;
      },
      //Akan berisi validation
    );
  }

  Widget usernameField() {
    //Membuat Text Input
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username' //Dengan Label Nama Lengkap
      ),
      validator: validateUsername,
      onSaved: (String value) {
        username = value;
      },
      //Akan berisi validation
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget registerButton() {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {
        //Perintah yang akan dieksekusi ketika tombol ditekan
        if(formKey.currentState.validate()) {
          formKey.currentState.save();

          print('Nama Lengkap : $name');
          print('Tanggal Lahir : $tanggalLahir');          
          print('Email : $email');
          print('No Hp : $noHp');
          print('Username : $username');
          print('Password : $password');
          
        }
      },
      child: Text('Daftar'),
      //Akan berisi validation
    );
  }
}
