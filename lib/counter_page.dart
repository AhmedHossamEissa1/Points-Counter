import 'package:counter/Cubit/counter_cubit.dart';
import 'package:counter/Cubit/counter_states.dart';
import 'package:counter/widgets/custom_appbar.dart';
import 'package:counter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppbarr(),
          body: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team  A",
                        style: TextStyle(fontSize: 35),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        color: Color(0xff89ABE3),
                        str: "Add 1",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .Increment(team: 'A', number: 1);
                        },
                      ),
                      CustomButton(
                        color: Color(0xff89ABE3),
                        str: "Add 2",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .Increment(team: 'A', number: 2);
                        },
                      ),
                      CustomButton(
                        color: Color(0xff89ABE3),
                        str: "Add 3",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .Increment(team: 'A', number: 3);
                        },
                      ),
                      Text(
                        BlocProvider.of<CounterCubit>(context)
                            .totalATeam
                            .toString(),
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                  Container(
                    height: 300,
                    width: 1,
                    color: Colors.black,
                  ),
                  Column(
                    children: [
                      Text(
                        "Team  B",
                        style: TextStyle(fontSize: 35),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        color: Color(0xffEA738D),
                        str: "Add 1",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .Increment(team: 'B', number: 1);
                        },
                      ),
                      CustomButton(
                        color: Color(0xffEA738D),
                        str: "Add 2",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .Increment(team: 'B', number: 2);
                        },
                      ),
                      CustomButton(
                        color: Color(0xffEA738D),
                        str: "Add 3",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .Increment(team: 'B', number: 3);
                        },
                      ),
                      Text(
                        BlocProvider.of<CounterCubit>(context)
                            .totalBTeam
                            .toString(),
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                  color: Color(0xff742047),
                  str: "Reset",
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).ResetFun();
                  })
            ],
          ),
        );
      },
    );
  }
}
