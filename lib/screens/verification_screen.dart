import 'package:firstapplication/main.dart';
import 'package:flutter/material.dart';
class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController codeController = TextEditingController();
  String verificationCode = "1234"; // Set your expected verification code
   List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back,color: Colors.black,
      )),
      body: Column(
        
        children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 50,left: 20,right: 20,bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Verification",style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 24),),
                Text("Please enter the OTP sent to you by SMS",style: TextStyle(fontSize: 18),),
              ],
            ),
          ),
          Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        4,
        (index) => SizedBox(
          width: 60.0,
          child: TextField(
            controller: controllers[index],
            keyboardType: TextInputType.number,
            maxLength: 1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              if (value.length == 1 && index < 3) {
                // Move focus to the next TextField
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
    )
            ],
          ),
        ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't get a code?",
                style: TextStyle(fontSize: 18),),
                Text("Send again",style: TextStyle(color: Colors.purple,
                fontSize: 18),),
              ],
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 300,left: 25,right: 25),
            child: Center(
              child: Row(
                children: [
                  Expanded(child: ElevatedButton(onPressed: (){},
                   child: Text("Verify",
                   style: TextStyle(fontSize: 18),),
                   style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple))))
                ],
              ),
            ),
          )
        ],
      )
    );
  }

}