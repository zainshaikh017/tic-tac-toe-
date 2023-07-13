// ignore_for_file: camel_case_types, non_constant_identifier_names
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

void main() => runApp(const mainscreen());

class mainscreen extends StatelessWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: gamescreen(),
    );
  }
}

class gamescreen extends StatefulWidget {
  const gamescreen({Key? key}) : super(key: key);

  @override
  State<gamescreen> createState() => _gamescreenState();
}

class _gamescreenState extends State<gamescreen> {
  // static const x='x';
  static const o = 'o';
  static const empty = '';

  static const boardlenght = 9;

  // static const blocksize=100.0;

  List<String>? board = initGameBoard();

  static List<String>? initGameBoard() =>
      List.generate(boardlenght, (index) => empty);
  String lastvalue = 'x';
  bool gameover = false;
  String Gameover = 'Game over !';
  String winx = 'x';
  String wino = 'o';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal.shade300,
        title: const Text('Tic Tac Toe'),
      ),
      backgroundColor: Colors.cyan.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(20)),
              Row(
                children: [
                  if (lastvalue == 'x') ...[
                    Expanded(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.teal.shade300,
                        child: const Text(
                          "Player 1 \n       X",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ] else ...[
                    Expanded(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.teal.shade300,
                        child: const Text(
                          'Player 2 \n       O',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              const Padding(padding: EdgeInsets.all(30)),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    padding: const EdgeInsets.all(16.0),
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    children: List.generate(9, (index) {
                      return InkWell(
                        onTap: gameover
                            ? null
                            : () {
                          if (board![index] == '') {
                            setState(() {
                              board![index] = lastvalue;
                              if (lastvalue == 'x') {
                                lastvalue = o;
                              } else {
                                lastvalue = 'x';
                              }

                              if (board![0] == 'x' &&
                                  board![1] == 'x' &&
                                  board![2] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![3] == 'x' &&
                                  board![4] == 'x' &&
                                  board![5] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![6] == 'x' &&
                                  board![7] == 'x' &&
                                  board![8] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![0] == 'x' &&
                                  board![4] == 'x' &&
                                  board![8] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![2] == 'x' &&
                                  board![4] == 'x' &&
                                  board![6] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![0] == 'x' &&
                                  board![3] == 'x' &&
                                  board![6] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![1] == 'x' &&
                                  board![4] == 'x' &&
                                  board![7] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![2] == 'x' &&
                                  board![5] == 'x' &&
                                  board![8] == 'x') {
                                showAlertDialog(
                                  context,
                                  winx,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              }

                              if (board![0] == 'o' &&
                                  board![1] == 'o' &&
                                  board![2] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![3] == 'o' &&
                                  board![4] == 'o' &&
                                  board![5] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![6] == 'o' &&
                                  board![7] == 'o' &&
                                  board![8] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![0] == 'o' &&
                                  board![4] == 'o' &&
                                  board![8] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![2] == 'o' &&
                                  board![4] == 'o' &&
                                  board![6] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![0] == 'o' &&
                                  board![3] == 'o' &&
                                  board![6] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![1] == 'o' &&
                                  board![4] == 'o' &&
                                  board![7] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              } else if (board![2] == 'o' &&
                                  board![5] == 'o' &&
                                  board![8] == 'o') {
                                showAlertDialog(
                                  context,
                                  wino,
                                );
                                setState(() {
                                  board = initGameBoard();
                                });
                              }
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.tealAccent.shade700),
                          child: Center(
                            child: Text(
                              board![index],
                              style: TextStyle(
                                  color: board![index] == "x"
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.teal.shade300)),
              onPressed: () {
                setState(() {
                  board = initGameBoard();
                });
              },
              icon: const Icon(Icons.replay),
              label: const Text('play again'),
            ),
          ),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context, String lastvalue) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Player $lastvalue is win"),
    content: const Text("Congratulations."),
    actions: [okButton],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
