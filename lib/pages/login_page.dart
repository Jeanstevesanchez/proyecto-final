import 'package:flutter/material.dart';
import 'package:gratificacion_instantanea/widgets/tabs.dart';
import 'package:gratificacion_instantanea/widgets/textfieldedit.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user = TextEditingController();

  TextEditingController password = TextEditingController();

  bool esVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Instagram',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
            
            const SizedBox(height: 16.0),

            TextFieldEdit(
              hinText: 'Teléfono o correo electrónico',
              controller: user,
            ),
            const SizedBox(height: 16.0),
            TextFieldEdit(
              hinText: 'Contraseña',
              controller: password,
              isObscure: esVisible,
              visible: () {
                esVisible = !esVisible;
                print(esVisible);
                setState(() {});
              },
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () => user.text == '' || password.text == ''
                  ? snackBarDebesCompletarTodo(context)
                  : Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const TabsInsta())),
              child: const Text('Ingresar'),
            ),
            const SizedBox(height: 16.0),
            const Text('Olvidaste tu contraseña? Obtén ayuda'),
            const Divider(),
            const Text('o'),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/facebook.png',
                      width: 32.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Text(
                      'Inicia sesión con facebook',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void snackBarDebesCompletarTodo(BuildContext context) {
    final snackbar = SnackBar(
      content: const Text(
        'Primero debes rellenar todos los datos',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.red,
      duration: const Duration(milliseconds: 2500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            32.0), /* side: BorderSide(width: 2.0, color: Colors.black) */
      ), //Redonear snackBar
      behavior: SnackBarBehavior.floating, //snackBar flotante
      margin: const EdgeInsets.all(16),
      //elevation: 0,
      action: SnackBarAction(
        textColor: Colors.white,
        label: 'Cerrar',
        onPressed: () {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context)..showSnackBar(snackbar);
  }
}
