import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {

  GlobalKey<FormState> formKey=GlobalKey<FormState>();

  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  String? name;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    textCapitalization: TextCapitalization.words,
                    onSaved: (val){
                      name=val!;
                    },
                    validator: (val){
                      if(val!.isEmpty){
                        return "Please Enter Name";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      label: Text("Name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue.shade900, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    textCapitalization: TextCapitalization.words,
                    obscuringCharacter: "*",
                    obscureText: true,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onSaved: (val){
                      password=val!;
                    },
                    validator: (val){
                      if(val!.isEmpty){
                        return "Please Enter Password";
                      }else if(val.length<6 || val.length>6){
                        return "Please Enter 6 Digit of Password";
                      } else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      label: Text("Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue.shade900, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey, width: 1.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade900,
                          foregroundColor: Colors.white
                        ),
                          onPressed: ()async{
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
        
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text("Login Successfully...."),
                              backgroundColor: Colors.grey,
                              behavior: SnackBarBehavior.floating,
                              action: SnackBarAction(label: "DISMISS", onPressed: (){Navigator.of(context).pop();}),
                            )
                          );

                          SharedPreferences preferences = await SharedPreferences.getInstance();
                          preferences.setBool("continue", true);
        
                          Navigator.pushReplacementNamed(context, 'home', arguments: nameController.text,);
        
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Login Failed...."),
                                backgroundColor: Colors.blue.shade900,
                                behavior: SnackBarBehavior.floating,
                              ),
                          );
        
                          print("=========");
                          print("Login Failed...");
                          print("=========");
                        }
                        print(name);
                        print(password);
                      }, child: Text("Contiue")),
        
                      SizedBox(width: 20,),
        
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade900,
                          foregroundColor: Colors.white
                        ),
                          onPressed: (){
                          formKey.currentState!.reset();
        
                          nameController.clear();
                          passwordController.clear();
        
                          name=null;
                          password=null;
        
                          FocusManager.instance.primaryFocus?.unfocus();
        
                      }, child: Text("Clear")),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
