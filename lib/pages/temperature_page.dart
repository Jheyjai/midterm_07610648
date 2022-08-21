import 'package:flutter/material.dart';
import 'package:midterm_07610648/temperature.dart';

class TemPage extends StatefulWidget {
  @override
  State<TemPage> createState() => _TemPageState();
}


class _TemPageState extends State<TemPage> {
  final _controller = TextEditingController();
  var _feedbackText = '';
  var _tem = Temp();

  void handleClickGuess() {
    print('Button clicked!');
    print(_controller.text);
    var N = int.tryParse(_controller.text);
    if (N == null) {
      //แจ้งerror
      print('input error');
      setState(() {
        _feedbackText = ('Input Error');
      });



  }
    }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),
            ),
            // Callback function
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                ElevatedButton(
                  onPressed: handleClickGuess,
                  child: const Text('Celsius To Fahrenheit '),
                ),
                Text( _feedbackText),
                ElevatedButton(
                  onPressed: handleClickGuess,
                  child: const Text('Celsius to kevlvin'),
                ),
                Text(_feedbackText),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton(
                  onPressed: handleClickGuess,
                  child: const Text('Fahrenheit to Celsius'),
                ),
                Text(_feedbackText),
                ElevatedButton(
                  onPressed: handleClickGuess,
                  child: const Text('Fahrenheit to kevlvin'),
                ),
                Text(_feedbackText),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ElevatedButton(
                onPressed: handleClickGuess,
                child: const Text('Kevlvin to Celsius'),
              ),
              Text(_feedbackText),
              ElevatedButton(
                onPressed: handleClickGuess,
                child: const Text('Kevlvin to Fahrenheit'),
              ),
              Text(_feedbackText),
            ],),
            


          ],

        ),


      ),

    );
  }
}
