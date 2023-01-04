import 'package:flutter/material.dart';
import 'package:maps/provider/map_provider.dart';
import 'package:provider/provider.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final addProvider = Provider.of<MapsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            onTap: () => addProvider.openGoogleMap(context),
            autofocus: false,
            focusNode: AlwaysDisableFocusNode(),
            controller: addProvider.refController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                hintText: 'Punto de referencia', prefixIcon: Icon(Icons.map)),
          ),
        ),
      ),
    );
  }
}

class AlwaysDisableFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
