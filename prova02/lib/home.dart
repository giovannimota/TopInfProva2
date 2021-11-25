import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String login = '';
  String password = '';

  String user = "GiovanniMota";
  String key = "giovanni123";

  void validateCredentials() {
    if ((login == user) && (password == key)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Opacity(
              opacity: 0.5,
              child: Image(
                  image: NetworkImage(
                      'https://static3.tcdn.com.br/img/img_prod/460977/action_figure_r2_d2_star_wars_o_despertar_da_forca_star_wars_the_force_awakens_mms408_boneco_colecio_48693_1_20201211173056.jpg')),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              onChanged: (value) {
                if (value.isEmpty) {
                  setState(() => login = '');
                } else {
                  setState(() {
                    login = value;
                  });
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'E-mail/Usuário',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              obscureText: true,
              onChanged: (value) {
                if (value.isEmpty) {
                  setState(() => password = '');
                } else {
                  setState(() {
                    password = value;
                  });
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Senha',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                validateCredentials();
              },
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem-vindo!"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          child: Opacity(
            opacity: 0.5,
            child: Image(
                image: NetworkImage(
                    'https://i.ebayimg.com/images/g/8MYAAOSwubdeTxy8/s-l640.jpg')),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          child: Text('Login realizado com sucesso!'),
        )
      ]),
    );
  }
}
