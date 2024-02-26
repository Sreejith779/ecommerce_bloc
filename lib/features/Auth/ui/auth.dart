
import 'package:flutter/material.dart';
class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {

    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final _formkey = Key("form");

    return Scaffold(
      body: Form(
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          margin:const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             if(!isLogin)  Text("Enter your Name"),
if(!isLogin) const SizedBox(height: 10,),
              if(!isLogin)    TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)

                  )
                ),
              ),

              const SizedBox(height: 20,),
              const  Text("Enter your Email"),
const SizedBox(height: 10,),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)

                  )
                ),
              ),
              const SizedBox(height: 20,),
              const  Text("Enter your Password"),
const SizedBox(height: 10,),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)

                  )
                ),
              ),
              const SizedBox(height: 20,),

              Center(
                child: ElevatedButton(onPressed: (){},
                    child: Text(isLogin? "Login":"Register")),
              ),
              const SizedBox(height: 10,),
              Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(isLogin? "Dont have an account?":"have an account?"),
                  InkWell(
                    onTap: (){
setState(() {
  isLogin = !isLogin;
});
                    },
                    child: Text(isLogin?" Register":" Login",
                    style: TextStyle(color: Colors.deepPurple),),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
