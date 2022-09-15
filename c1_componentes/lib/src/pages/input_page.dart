import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  final TextEditingController _inputFieldDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          counter: Text('Letras ${_nombre.length}'),
          label: Text('Nombre y Apellido'),
          hintText: 'Por favor ingrese su nombre',
          helperText: 'Ingrese su nombre completo',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('email: $_email'),
    );
  }

  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          label: Text('email'),
          helperText: 'Ingrese su dirección de correo',
          hintText: 'email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          counter: Text('Letras ${_password.length}'),
          label: Text('Password'),
          hintText: 'Password',
          helperText: 'Ingrese su Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  _crearFecha(context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          counter: Text('Letras ${_password.length}'),
          label: Text('Fecha de Nacimiento'),
          hintText: 'Fecha de Nacimiento',
          helperText: 'Ingrese su Fecha de Nacimiento',
          suffixIcon: Icon(Icons.calendar_view_month),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1960),
        lastDate: DateTime(2050));
        
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }
}
