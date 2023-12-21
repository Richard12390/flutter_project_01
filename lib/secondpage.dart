import 'package:flutter/material.dart';
import './widgets/widgets.dart';
import 'package:flutter/widgets.dart';
// import 'package:';

class Screener extends StatefulWidget {
  const Screener({super.key});

  @override
  State<Screener> createState() => _ScreenerState();
}

class _ScreenerState extends State<Screener> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/backgroundmoney.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text("Screener")),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              commentTextField(
                title: "Market Cap.",
                hintText: "Market Cap.",
              ),
              Row(
                children: [
                  Expanded(
                    child: commentTextField(
                      title: "P/E",
                      hintText: "P/E",
                    ),
                  ),
                  Expanded(
                    child: commentTextField(
                      title: "PEG",
                      hintText: "PEG",
                    ),
                  ),
                ],
              ),
              commentTextField(
                title: "P/B",
                hintText: "P/B",
              ),
              commentTextField(
                title: "Gross Margin",
                hintText: "Gross Margin",
              ),
              commentTextField(
                title: "Price/Cash",
                hintText: "Price/Cash",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
    
  
// Market Cap.
// P/E
// PEG	
// P/B
// Gross Margin	
// Price/Cash
// Dividend Yield
// Float Short	
// Average Volume
// Relative Volume
// Current Volume	