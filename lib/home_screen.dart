
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _fieldOneTeController = TextEditingController();
  TextEditingController _fieldTwoTeController = TextEditingController();
  GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  double result=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Sum APP"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
          children: [
            Text("Result is: $result",style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
             TextFormField(
              controller: _fieldOneTeController,
              keyboardType: TextInputType.number,
               textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                hintText: 'field 1'
              ),
               validator: (String? value){
                if (value?.isEmpty ?? true){
                  return 'Enter Valid Value';
                }
                return null;
               },
            ),
             TextFormField(
               controller: _fieldTwoTeController,
               keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                  hintText: 'field 2'
              ),
               validator: (String? value){
                 if (value?.isEmpty ?? true){
                   return 'Enter Valid Value';
                 }
                 return null;
               },
            ),
            const SizedBox(height: 16.0,),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
               ElevatedButton.icon(onPressed: ( ){
                 if (_formKey.currentState!.validate()){
                   double firstNumber = double.parse(_fieldOneTeController.text.trim());
                   double SecondNumber = double.parse(_fieldTwoTeController.text.trim());
                   print(firstNumber);
                   print(SecondNumber);
                   result= firstNumber + SecondNumber;
                   setState(() {
                   });
                 }
               }, icon: const Icon(Icons.add), label: const Text('Add'),),
               ElevatedButton.icon(onPressed: ( ){
                 if (_formKey.currentState!.validate()){
                   double firstNumber = double.parse(_fieldOneTeController.text.trim());
                   double SecondNumber = double.parse(_fieldTwoTeController.text.trim());
                   print(firstNumber);
                   print(SecondNumber);
                   result= firstNumber - SecondNumber;
                   setState(() {
                   });
                 }
               }, icon: const Icon(Icons.remove), label: const Text('Minus'),),
               ElevatedButton.icon(onPressed: ( ){
                 if (_formKey.currentState!.validate()){
                   double firstNumber = double.parse(_fieldOneTeController.text.trim());
                   double SecondNumber = double.parse(_fieldTwoTeController.text.trim());
                   print(firstNumber);
                   print(SecondNumber);
                   result= firstNumber * SecondNumber;
                   setState(() {
                   });
                 }
               }, icon: const Icon(Icons.star), label: const Text('Multiply'),),
               ElevatedButton.icon(onPressed: ( ){
                 if (_formKey.currentState!.validate()){
                   double firstNumber = double.parse(_fieldOneTeController.text.trim());
                   double SecondNumber = double.parse(_fieldTwoTeController.text.trim());
                   print(firstNumber);
                   print(SecondNumber);
                   result= firstNumber / SecondNumber;
                   setState(() {
                   });
                 }
               }, icon: const Icon(Icons.sign_language_sharp), label: const Text('Devidation'),),
               ElevatedButton.icon(onPressed: ( ){
                 if (_formKey.currentState!.validate()){
                   double firstNumber = double.parse(_fieldOneTeController.text.trim());
                   double SecondNumber = double.parse(_fieldTwoTeController.text.trim());
                   print(firstNumber);
                   print(SecondNumber);
                   result= firstNumber %  SecondNumber;
                   setState(() {
                   });
                 }
               }, icon: const Icon(Icons.sign_language_sharp), label: const Text('Modulus'),),
              ],
            )
          ],
        ),
        )
      )
    );
  }
}
