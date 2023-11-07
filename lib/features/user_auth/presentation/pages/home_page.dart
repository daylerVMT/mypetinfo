import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../ui/page1.dart';
import '../ui/registro/mascota_screen.dart';
import '../ui/page3.dart';
import '../ui/page4.dart';
import '../ui/page5.dart';
import '../../../../global/common/toast.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
    void initState() {
      super.initState();
      controller = TabController(length: 5, vsync: this);
      controller.addListener(() {
        setState(() {});
      });
    }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal ,
        title: const Text("HOME PAGE"),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Colors.teal,
          controller: controller,
          labelStyle: TextStyle(fontSize: 22),
          unselectedLabelColor: Colors.black,
          unselectedLabelStyle: TextStyle(fontSize: 15),
          tabs: [
            Row(
              children:[
                Text("News"),
                SizedBox(height: 5),
              ],
            ),
            Text("Register"),
            Text("Alerts"),
            Text("Maps"),
            Text("Perfil"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Pagina1(),
          Pagina2(),
          Pagina3(),
          Pagina4(),
          Pagina5(),
          ],
        ),
      );
}

