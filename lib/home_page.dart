import 'package:currency_converter/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController usd = TextEditingController();
  double bdt = 0.0;
  void calculate(){
    double inusd= double.tryParse(usd.text)??0;
    if(inusd>=0){
      double out= inusd*120.00;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Result(inus: inusd,out: out),
        ),
      );
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enter Valid Amount")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Currency Converter",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usd,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter the USD Amount",
                hintText: "99",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: calculate,
                child: const Text("Convert",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
