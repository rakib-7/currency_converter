import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double inus;
  final double out;
  const Result({super.key,required this.inus, required this.out});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Result",
        style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),
        ),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("${inus.toStringAsFixed(0)} USD = TK ${out.toStringAsFixed(0)}",
                style:TextStyle(fontSize: 28),),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(

                onPressed: ()=> Navigator.pop(context),
                child: const Text("Reconvert",style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
