import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          _crearSlider(),
          _checkBox(),
          _crearSwitch(),
          Expanded(
            child: _crearImagen(),
          )
        ],
      ),
    );
  }

  _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        divisions: 50,
        value: _valorSlider,
        min: 100,
        max: 400,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  _crearImagen() {
    return Image(
      image: const NetworkImage(
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/naranja-portada-1657997149.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  _checkBox() {
    /*  return Checkbox(
        value: _bloquearCheck,
        onChanged: (valor) {
          _bloquearCheck = valor!;
          setState(() {});
        });*/
    return CheckboxListTile(
        title: const Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          _bloquearCheck = valor!;
          setState(() {});
        });
  }

  _crearSwitch() {
    return SwitchListTile(
        title: const Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          _bloquearCheck = valor!;
          setState(() {});
        });
  }
}
