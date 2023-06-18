import 'package:flutter/material.dart';
import 'Contact.dart';


class Register extends StatefulWidget {
  final id;
  const Register({Key key, this.id}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List<Contact> passwords = List.empty(growable: true);

  int selectedIndex = -1;
  final _key=GlobalKey<FormState>();
  int id=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Registeration Form")
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10),),),),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10),),),),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration:const InputDecoration(
                hintText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  String name = nameController.text.trim();
                  String email = nameController.text.trim();
                  String password = passwordController.text.trim();
                  if (name.isNotEmpty && email.isNotEmpty){
                    setState(() {
                      nameController.text = '';
                      emailController.text = '';
                      passwordController.text = '';
                      passwords.add(Contact(name: name, email: email,password: password));
                    });
                  }
                },child: const Text('Save')),
                ElevatedButton(onPressed: (){
                  String name = nameController.text.trim();
                  String email = nameController.text.trim();
                  String password = passwordController.text.trim();
                  if (name.isNotEmpty && email.isNotEmpty) {
                    setState(() {
                      nameController.text = '';
                      emailController.text = '';
                      passwordController.text = '';
                      passwords[selectedIndex].name = name;
                      passwords[selectedIndex].email = email;
                      passwords[selectedIndex].password = password;
                      selectedIndex = -1;
                    });
                  }
                },child: const Text('Update')),
              ],
            ),
            const SizedBox(height: 10),
            passwords.isEmpty
                ? const Text('No  any Registration',
              style: TextStyle(fontSize: 22),
            ):
            Expanded(
              child: ListView.builder(
                itemCount: passwords.length,
                itemBuilder: (context, index) => getRow(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: index%2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
          foregroundColor: Colors.white,
          child: Text(passwords[index].name[0], style:const TextStyle(fontWeight: FontWeight.bold),),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(passwords[index].name, style:const TextStyle(fontWeight: FontWeight.bold),),
            Text(passwords[index].email),
          ],
        ),
        trailing: SizedBox(
          width: 70,
          child: Row(
            children:[
              InkWell(
                  onTap: (){
                    nameController.text = passwords[index].name;
                    emailController.text = passwords[index].email;
                    // passwordController.text = passwords[index].password;
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child:const Icon(Icons.edit)),
              InkWell(
                  onTap: ((){
                    setState(() {
                      passwords.removeAt(index);
                    });
                  }),
                  child:const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
