import 'package:flutter/material.dart';
import 'package:meuapp/views/login_View.dart';
import 'package:meuapp/views/tarefas_View.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = 'OwrOlGCm0ZU1XBobkK0zCZgF2UgOP9UEm884xu10';
  const keyClientKey = 'cwKMq9jd25utYyk5lrjauU0vdEeW5BiAMBKbSDCZ';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);

  runApp(const app_rel());
}

class app_rel extends StatelessWidget {
  const app_rel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Relatório",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginView(),
    );
  }
}
