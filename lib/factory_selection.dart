import 'package:flutter/material.dart';
import '../iwidgets_factory.dart';
import 'factories/cupertino_widgets_factory.dart';
import 'factories/material_widgets_factory.dart';

class FactorySelection extends StatefulWidget {
  const FactorySelection({super.key});

  @override
  _FactorySelectionState createState() => _FactorySelectionState();
}

class _FactorySelectionState extends State<FactorySelection> {
  late IWidgetsFactory _fabrica;
  bool _valorSwitch = false;
  double _valorSlider = 0.0;

  @override
  void initState() {
    super.initState();
    _fabrica = CupertinoWidgetsFactory();
  }

  void _cambioValorSwitch(bool value) {
    setState(() {
      _valorSwitch = value;
    });
  }

  void _cambioValorSlider(double value) {
    setState(() {
      _valorSlider = value;
    });
  }

  void _fabricaSelecionada(bool? isIOS) {
    if (isIOS != null) {
      setState(() {
        _fabrica = isIOS ? CupertinoWidgetsFactory() : MaterialWidgetsFactory();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Material'),
              Radio(
                value: false,
                groupValue: _fabrica is CupertinoWidgetsFactory,
                onChanged: _fabricaSelecionada,
              ),
              
              const SizedBox(width: 30),
              const Text('Cupertino'),
              Radio<bool>(
                value: true,
                groupValue: _fabrica is CupertinoWidgetsFactory,
                onChanged: _fabricaSelecionada,
                
                
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 100,
              ),
const Text('Activity Indicator ANDROID and IOS  '),
              
              const SizedBox(height: 30),
              _fabrica
                  .createActivityIndicator()
                  .render(), // Llama al método render() en el widget creado
              const SizedBox(height: 100),
              const SizedBox(height: 30),
              SizedBox(
                width: 210,
                child: _fabrica.createSlider().render(
                      _valorSlider,
                      _cambioValorSlider,
                    ),
              ),
              const SizedBox(height: 100),

              const SizedBox(height: 30),
              _fabrica.createSwitch().render(
                    value: _valorSwitch,
                    onChanged: _cambioValorSwitch,
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
