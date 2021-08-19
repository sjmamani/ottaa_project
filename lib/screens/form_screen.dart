import 'package:flutter/material.dart';

// Los meses se están tratando con números
// y no se está validando la cantidad de días según el mes

final List<String> genders = ['Male', 'Female'];
final List<String> years =
    List<String>.generate(100, (int index) => (1921 + index).toString());
final List<String> months =
    List<String>.generate(12, (int index) => (1 + index).toString());
final List<String> days =
    List<String>.generate(31, (int index) => (1 + index).toString());

final Widget spaceDivider = SizedBox(
  height: 30,
);

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Thank you for choosing OTTAA project',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintText: 'Your Name',
                ),
              ),
              spaceDivider,
              MyCustomDropdownButton(
                hintText: 'Gender',
                items: genders,
                fillColor: Colors.grey[200]!,
                hasShadow: false,
              ),
              spaceDivider,
              Text(
                'Date of Birth',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: MyCustomDropdownButton(
                      hintText: 'Year',
                      items: years,
                      key: GlobalKey(debugLabel: '1'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MyCustomDropdownButton(
                      hintText: 'Month',
                      items: months,
                      key: GlobalKey(debugLabel: '2'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MyCustomDropdownButton(
                      hintText: 'Day',
                      items: days,
                      key: GlobalKey(debugLabel: '3'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomDropdownButton extends StatefulWidget {
  const MyCustomDropdownButton({
    Key? key,
    this.fillColor = Colors.white,
    this.hasShadow = true,
    required this.hintText,
    required this.items,
  }) : super(key: key);

  final Color fillColor;
  final bool hasShadow;
  final String hintText;
  final List<String> items;

  @override
  _MyCustomDropdownButtonState createState() => _MyCustomDropdownButtonState();
}

class _MyCustomDropdownButtonState extends State<MyCustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.items.first;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
          color: widget.fillColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: widget.hasShadow
              ? [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey[300]!,
                    offset: Offset(0, 4),
                    spreadRadius: 1,
                  ),
                ]
              : []),
      child: DropdownButton<String>(
        items: this.widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        underline: SizedBox.shrink(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        hint: Text(widget.hintText),
        isExpanded: true,
        icon: Icon(Icons.expand_more),
      ),
    );
  }
}
