import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) => MaterialApp(
    title: 'Checkbox Example',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body:Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: CheckBoxExample(),
      ),
    ),
  );
}

class CheckBoxExample extends StatefulWidget {
  @override
  createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  var isChecked = false;
  var label = 'チェックボックスの状態が表示されます。';

  @override
  build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('$label'),
      SizedBox(height: 15,),
      Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) => setState(() {
              label = 'おかゆ' + (value! ? 'が選択されました。' : 'の選択が解除されました。');
              setState(() => isChecked = value);
            }),
          ),
          SizedBox(width: 5,),
          Text('おかゆ'),
        ],
      ),
    ]
  );
}
