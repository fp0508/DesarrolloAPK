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
  String _opcionSeleccionada = 'Volar';
  final List<String> _poderes = [
    'Volar',
    'Rayos X',
    'Invisibilidad',
    'Teletransportación',
    'Telequinesis'
  ];

  final TextEditingController _inputFieldDateController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs de texto'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          _crearInput(),
          const Divider(),
          _crearEmail(),
          const Divider(),
          _crearPassword(),
          const Divider(),
          _crearFecha(context),
          const Divider(),
          _crearDropdown(),
          const Divider(),
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
          label: const Text('Nombre y Apellido'),
          hintText: 'Por favor ingrese su nombre',
          helperText: 'Ingrese su nombre completo',
          suffixIcon: const Icon(Icons.accessibility),
          icon: const Icon(Icons.account_circle)),
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
      trailing: Text(_opcionSeleccionada),
    );
  }

  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          label: const Text('email'),
          helperText: 'Ingrese su dirección de correo',
          hintText: 'email',
          suffixIcon: const Icon(Icons.alternate_email),
          icon: const Icon(Icons.email)),
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
          label: const Text('Password'),
          hintText: 'Password',
          helperText: 'Ingrese su Password',
          suffixIcon: const Icon(Icons.lock_open),
          icon: const Icon(Icons.lock)),
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
          label: const Text('Fecha de Nacimiento'),
          hintText: 'Fecha de Nacimiento',
          helperText: 'Ingrese su Fecha de Nacimiento',
          suffixIcon: const Icon(Icons.calendar_view_month),
          icon: const Icon(Icons.calendar_today)),
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
        lastDate: DateTime(2050),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];
    for (var poder in _poderes) {
      lista.add(DropdownMenuItem(
        value: poder,
        child: Text(poder),
      ));
    }
    return lista;
  }

  _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(
          height: 30,
          width: 20,
        ),
        Expanded(
          child: DropdownButton(
              value: _opcionSeleccionada,
              items: getOpcionesDropdown(),
              onChanged: (opt) {
                setState(() {
                  _opcionSeleccionada = opt!;
                });
              }),
        ),
      ],
    );
  }
}
