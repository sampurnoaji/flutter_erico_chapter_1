import 'package:erico_intro/lesson.dart';
import 'package:erico_intro/lesson/state_management/application_color.dart';
import 'package:erico_intro/lesson/state_management/cart.dart';
import 'package:erico_intro/lesson/state_management/money.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderStateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApplicationColor()),
        ChangeNotifierProvider(create: (_) => Money()),
        ChangeNotifierProvider(create: (_) => Cart())
      ],
      child: Scaffold(
          appBar: AppBar(
            title: Text(Lesson.Provider_State_Management.name),
            backgroundColor: Colors.black,
          ),
          body: Builder(builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 100,
                    height: 100,
                    color: context.watch<ApplicationColor>().color,
                    margin: EdgeInsets.all(5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Amber'),
                      SizedBox(width: 5),
                      Switch(
                          value: context.watch<ApplicationColor>().isBlue,
                          onChanged: (value) {
                            context.read<ApplicationColor>().isBlue = value;
                          }),
                      SizedBox(width: 5),
                      Text('Blue'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Balance'),
                      Container(
                        height: 30,
                        width: 150,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple[100],
                            border: Border.all(color: Colors.purple, width: 2)),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            context.watch<Money>().money.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.purple),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apple (500) x ${context.watch<Cart>().qty}',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            '${500 * context.watch<Cart>().qty}',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (context.read<Money>().money >= 500) {
                        context.read<Cart>().qty += 1;
                        context.read<Money>().money -= 500;
                      }
                    },
                    child: Icon(Icons.shopping_cart),
                  )
                ],
              ),
            );
          })),
    );
  }
}
