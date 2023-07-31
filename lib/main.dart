import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String winnerTxt='';
  String player = 'x';
  var arr = [
            ['', '', ''],
            ['', '', ''],
            ['', '', ''],
            ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton( child: Text(arr[0][0]), onPressed: () {arr[0][0]=player; playerSwitch(); setState(() {});}),
            ElevatedButton( child: Text(arr[0][1]), onPressed: () {arr[0][1]=player; playerSwitch(); setState(() {});}),
            ElevatedButton( child: Text(arr[0][2]), onPressed: () {arr[0][2]=player; playerSwitch(); setState(() {});}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton( child: Text(arr[1][0]), onPressed: () {arr[1][0]=player; playerSwitch(); setState(() {});}),
            ElevatedButton( child: Text(arr[1][1]), onPressed: () {arr[1][1]=player; playerSwitch(); setState(() {});}),
            ElevatedButton( child: Text(arr[1][2]), onPressed: () {arr[1][2]=player; playerSwitch(); setState(() {});}),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton( child: Text(arr[2][0]), onPressed: () {arr[2][0]=player; playerSwitch(); setState(() {});}),
            ElevatedButton( child: Text(arr[2][1]), onPressed: () {arr[2][1]=player; playerSwitch(); setState(() {});}),
            ElevatedButton( child: Text(arr[2][2]), onPressed: () {arr[2][2]=player; playerSwitch(); setState(() {});}),
          ],
        ),

        Text(winnerTxt)
      ],
    )));
  }

  playerSwitch(){

    print('check');

    winnerCheck();

    if(player == 'x')
      player='o';
    else
      player='x';

      
  }

  void winnerCheck(){

   
  }

  void winner(){
    print('winner found');
    setState(() {
      winnerTxt='gewonnen hat: ${player}';
    });
  }
}
