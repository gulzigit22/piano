import 'package:flutter/material.dart';
import 'package:piano/companest/demo_widget.dart';
import 'package:piano/companest/demo_widget_black.dart';

class PianoPage extends StatefulWidget {
  const PianoPage({Key? key}) : super(key: key);

  @override
  _PianoPageState createState() => _PianoPageState();
}

class _PianoPageState extends State<PianoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('My Piano App'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DemoWhite(
                          text1: 'f12',
                        ),
                        DemoWhite(
                          text1: 'f12',
                        ),
                        DemoWhite(
                          text1: 'f12',
                        ),
                        DemoWhite(
                          text1: 'f12',
                        ),
                        DemoWhite(
                          text1: 'f12',
                        ),
                        DemoWhite(
                          text1: 'f12',
                        ),
                        DemoWhite(
                          text1: 'f12',
                        ),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: .0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PianoBlackButton(
                            text: 'f12',
                          ),
                          PianoBlackButton(
                            text: 'f12',
                          ),
                          PianoBlackButton(
                            text: 'f12',
                          ),
                          PianoBlackButton(
                            visible: false,
                            text: 'f12',
                          ),
                          PianoBlackButton(
                            text: 'f12',
                          ),
                          PianoBlackButton(
                            text: 'f12',
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
