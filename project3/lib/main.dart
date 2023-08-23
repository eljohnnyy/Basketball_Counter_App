import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/cubit/counter_state.dart';
import 'package:project3/cubit/cubit.dart';

void main() {
  runApp(Point());
}

class Point extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: cubit(),
      ),
    );
  }
}

class cubit extends StatelessWidget {
  cubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, State) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Points Counter',
                style: TextStyle(color: Color.fromARGB(255, 245, 240, 240)),
              ),
              backgroundColor: Color.fromARGB(255, 9, 205, 231),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'TEAM A',
                            style: TextStyle(color: Colors.black, fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).counta}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 205, 231),
                              maximumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Teamincrement(Team: 'A', num: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 205, 231),
                              maximumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Teamincrement(Team: 'A', num: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 205, 231),
                              maximumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Teamincrement(Team: 'A', num: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        thickness: 2,
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'TEAM B',
                            style: TextStyle(color: Colors.black, fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).countb}',
                            style:
                                TextStyle(color: Colors.black, fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 205, 231),
                              maximumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Teamincrement(Team: 'B', num: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 205, 231),
                              maximumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Teamincrement(Team: 'B', num: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 205, 231),
                              maximumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Teamincrement(Team: 'B', num: 3);
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 9, 205, 231),
                    fixedSize: Size(150, 50),
                  ),
                  onPressed: () {
BlocProvider.of<CounterCubit>(context).counta=0;
BlocProvider.of<CounterCubit>(context).countb=0;
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, State) {});
  }
}
