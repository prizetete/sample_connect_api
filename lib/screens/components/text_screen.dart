import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  var isChecked = false;
  int _selectedValue = 0;
  var isSwitchChecked = false;
  var sliderValue = 0.5;
  int _selectedDropDownValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              textWidget('Text Widget'),
              const SizedBox(height: 10),
              richTextWidget(),
              const SizedBox(height: 10),
              textFieldWidget(),
              const SizedBox(height: 10),
              textFormFieldWidget(),
              const SizedBox(height: 10),
              checkboxWidget(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [...radioButtons(4)],
              ),
              const SizedBox(height: 10),
              switchWidget(),
              const SizedBox(height: 10),
              Text('Slider Value: ${sliderValue.toStringAsFixed(2)}'),
              sliderWidget(),
              const SizedBox(height: 10),
              dropdownButtonWidget(),
              const SizedBox(height: 10),
              dropdownMenuWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Text textWidget(String text) {
    return Text(text, style: const TextStyle(fontSize: 20));
  }

  RichText richTextWidget() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Hello, ',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          TextSpan(
            text: 'this is ',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          TextSpan(
            text: 'RichText',
            style: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' example. ',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          TextSpan(
            text: 'Click here',
            style: TextStyle(
              color: Colors.blueAccent,
              decoration: TextDecoration.underline,
              fontSize: 20,
            ),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // ทำอะไรสักอย่างเมื่อกดที่ข้อความนี้
                  },
          ),
          TextSpan(
            text: ' to learn more.',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }

  TextField textFieldWidget() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Enter your name',
        border: OutlineInputBorder(),
      ),
    );
  }

  TextFormField textFormFieldWidget() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter your email',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
    );
  }

  Checkbox checkboxWidget() {
    return Checkbox(
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value ?? false;
        });
        // Handle checkbox state change
      },
    );
  }

  List<Radio> radioButtons(int numberOfButtons) {
    List<Radio> radioButtons = [];
    for (var i = 0; i < numberOfButtons; i++) {
      radioButtons.add(
        Radio(
          value: i,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value ?? 0;
            });
          },
        ),
      );
    }
    return radioButtons;
  }

  Switch switchWidget() {
    return Switch(
      activeColor: Colors.green,
      value: isSwitchChecked,
      onChanged: (value) {
        setState(() {
          isSwitchChecked = value;
        });
      },
    );
  }

  Slider sliderWidget() {
    return Slider(
      value: sliderValue,
      onChanged: (value) {
        setState(() {
          sliderValue = value;
        });
      },
    );
  }

  DropdownButton dropdownButtonWidget() {
    return DropdownButton(
      value: _selectedDropDownValue,
      items: [
        DropdownMenuItem(value: 0, child: Text('Option 1')),
        DropdownMenuItem(value: 1, child: Text('Option 2')),
        DropdownMenuItem(value: 2, child: Text('Option 3')),
      ],
      onChanged: (value) {
        setState(() {
          _selectedDropDownValue = value ?? 0;
        });
      },
    );
  }

  DropdownMenu dropdownMenuWidget() {
    return DropdownMenu(
      initialSelection: _selectedDropDownValue,
      dropdownMenuEntries: [
        DropdownMenuEntry(value: 0, label: 'Option 1'),
        DropdownMenuEntry(value: 1, label: 'Option 2'),
        DropdownMenuEntry(value: 2, label: 'Option 3'),
      ],
      onSelected: (value) {
        setState(() {
          _selectedDropDownValue = value;
        });
      },
    );
  }
}
