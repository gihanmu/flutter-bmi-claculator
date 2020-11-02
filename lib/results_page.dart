import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    String result;
    String bmi;
    String interpretation = '';

    if (arguments != null) {
      result = arguments['result'];
      bmi = arguments['bmi'];
      interpretation = arguments["interpretation"];
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('Results Page'),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Your Result ',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: kActiveCardColor,
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Text(
                                result,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green.shade800),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: Text(
                                bmi,
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 50.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Text(
                                interpretation,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 80.0,
                color: kBottomContainerColor,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      'RE-CALCULATE',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
