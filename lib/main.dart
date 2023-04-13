import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List list =  [
    'https://th.bing.com/th/id/OIP.gBgql-q6aYB81Vd9y4hMkgHaFj?w=220&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
    'https://th.bing.com/th/id/OIP.R7PrxHx6A1u_jH6wUuJiRQHaEK?w=288&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
    'https://th.bing.com/th/id/OIP.SNxtFWQNm_atC9AATSZqBgHaFV?w=205&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
    'https://th.bing.com/th/id/OIP.HRejIhRNDKLlFRk-VVFitwHaEK?w=264&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
    'https://th.bing.com/th/id/OIP.sF1bXBm66j75gaci9lJcCgHaD5?w=304&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',

  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child:SingleChildScrollView(
          child: Container(
            height: 800,
            child: GridView.count(
              crossAxisCount: 1,
              children:
              List.generate(list.length, (index) => Column(
      children: [
        Text("Each Images have there own Headers $index",
          style: TextStyle(
            color: Colors.green,
            fontSize: 16,
          ),),
                SizedBox(height: 50,),
                Image.network(
                list[index],
                fit: BoxFit.cover,

              ),
      ],
    ),
            ),
          ),
        ),
        ),
    );
  }
}
