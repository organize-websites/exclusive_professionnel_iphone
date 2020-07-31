import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {runApp(MaterialApp(
	title: 'Navegação Básica',
	 theme: ThemeData(
	   primarySwatch: Colors.white
         ),
         home: HomePage(),
      )
    ); 
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
        backgroundColor: Colors.white,
        body:
        Container(
          child: 
          CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset('imagens/logo_site_preto.png'),
                    )
                  ],
                ),
              ),
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child:
                        Text('_________')
                      ),
                    )
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                delegate: 
                SliverChildListDelegate(
                  [
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                      }, 
                      child:
                      Column(
                        children: <Widget>[
                          Icon(Icons.shopping_basket, size:60),
                          Text('Loja')
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                      }, 
                      child:
                      Column(
                        children: <Widget>[
                          Icon(Icons.portrait, size:60),
                          Text('Sobre')
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                      }, 
                      child:
                      Column(
                        children: <Widget>[
                          Icon(Icons.send, size:60),
                          Text('Contato')
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: _launchURL,
                      child:
                      Column(
                        children: <Widget>[
                          Icon(FontAwesome5Brands.whatsapp, size:60),
                          Text('WhatsApp')
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: _launchURL2,
                      child:
                      Column(
                        children: <Widget>[
                          Icon(FontAwesome5Brands.facebook, size:60),
                          Text('Facebook')
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: _launchURL3,
                      child:
                      Column(
                        children: <Widget>[
                          Icon(FontAwesome5Brands.instagram, size:60),
                          Text('Instagram')
                        ],
                      ),
                    ),
                  ]
                ), 
              ),
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                        }, 
                        child: Text('ABRA O MENU')
                      ),
                    )
                  ],
                ),
              ),
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: RaisedButton(
                        onPressed: _launchURL5,
                        child: Text('ACESSE O SITE')
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      body: 
        ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('SOBRE NÓS'),
              subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
              onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                      },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('CONTATE-NOS'),
              subtitle: Text('Fale conosco'),
              onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                      },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('ENCONTRE-NOS'),
              subtitle: Text('Veja aqui o nosso endereço no mapa'),
              onTap: _launchURL4,
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('FAÇA SEU PEDIDO'),
              subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
              onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                      },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('CARRINHO'),
              subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
              onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                      },
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account),
              title: Text('MINHA CONTA'),
              subtitle: Text('Clique aqui e acesse sua conta'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
              },
            ),
            ListTile(
              leading: Icon(FontAwesome5Brands.facebook),
              title: Text('FACEBOOK'),
              subtitle: Text('Veja nosso Facebook'),
              onTap: _launchURL2,
            ),
            ListTile(
              leading: Icon(FontAwesome5Brands.instagram),
              title: Text('INSTAGRAM'),
              subtitle: Text('Veja nosso Instagram'),
              onTap: _launchURL3,
            ),
            ListTile(
              leading: Icon(FontAwesome5Brands.whatsapp),
              title: Text('WHATSAPP'),
              subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
              onTap: _launchURL,
            ),
            ListTile(
              leading: Icon(Icons.copyright),
              title: Text('SOBRE O APP'),
              subtitle: Text('Conheça o criador do app!'),
              onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                      },
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('POLÍTICA DE PRIVACIDADE'),
              subtitle: Text('Veja aqui a nossa política de privacidade'),
              onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                      },
            ),
          ],
        ),        
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),
      body: 
        WebView(
          initialUrl: 'https://exclusiveprofessionnel.com.br/sobre-app/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Contato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),
      body: 
        WebView(
          initialUrl: 'https://exclusiveprofessionnel.com.br/contato-app/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SobreOApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),
      body: 
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(68.0),
              child: Image.asset('imagens/logo_site_preto.png'),
            ),
            Text('Exclusive Professionnel'),
            Text('Criado pela Organize Websites!'),
            Text('Versão 1.0.0'),
            Image.asset('imagens/logo_p.png')
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FacaSeuPedido  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),
      body: 
        WebView(
          initialUrl: 'https://exclusiveprofessionnel.com.br/loja-app',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Acessar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),  
      body: 
        WebView(
          initialUrl: 'https://exclusiveprofessionnel.com.br/minha-conta-app/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PoliticaDePrivacidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),
      body: 
        WebView(
          initialUrl: 'https://exclusiveprofessionnel.com.br/politica-de-privacidade',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MinhaConta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),
      body: 
        WebView(
          initialUrl: 'https://exclusiveprofessionnel.com.br/minha-conta-app/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exclusive Professionnel',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: 
        AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: 
          Center(
            child: Text('Exclusive Professionnel'),
          ),
          backgroundColor: Colors.white,
        ),
      body: 
        WebView(
          initialUrl: 'https://exclusiveprofessionnel.com.br/carrinho-app/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: FlatButton(
                    child: Image.asset('imagens/woo.png'),
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                    color: Colors.transparent,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('SOBRE NÓS'),
                subtitle: Text('Saiba mais sobre a Exclusive Professionnel'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('CONTATE-NOS'),
                subtitle: Text('Fale conosco'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('ENCONTRE-NOS'),
                subtitle: Text('Veja aqui o nosso endereço no mapa'),
                onTap: _launchURL4,
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('FAÇA SEU PEDIDO'),
                subtitle: Text('Veja nossos produtos e continue comprando no APP!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('CARRINHO'),
                subtitle: Text('Veja o que você ja adicionou ao carrinho!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FacaSeuPedido()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.supervisor_account),
                title: Text('MINHA CONTA'),
                subtitle: Text('Clique aqui e acesse sua conta'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MinhaConta()));
                },
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.facebook),
                title: Text('FACEBOOK'),
                subtitle: Text('Veja nosso Facebook'),
                onTap: _launchURL2,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.instagram),
                title: Text('INSTAGRAM'),
                subtitle: Text('Veja nosso Instagram'),
                onTap: _launchURL3,
              ),
              ListTile(
                leading: Icon(FontAwesome5Brands.whatsapp),
                title: Text('WHATSAPP'),
                subtitle: Text('Mande-nos uma mensagem no WhatsApp'),
                onTap: _launchURL,
              ),
              ListTile(
                leading: Icon(Icons.copyright),
                title: Text('SOBRE O APP'),
                subtitle: Text('Conheça o criador do app!'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SobreOApp()));
                        },
              ),
              ListTile(
                leading: Icon(Icons.public),
                title: Text('POLÍTICA DE PRIVACIDADE'),
                subtitle: Text('Veja aqui a nossa política de privacidade'),
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaDePrivacidade()));
                        },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.home, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('HOME', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carrinho()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('CARRINHO', style: TextStyle(color: Colors.grey[700]),),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                        icon: Icon(Icons.account_box, color: Colors.grey[700]),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acessar()));
                        },
                      ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text('ACESSAR', style: TextStyle(color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'http://wa.me/5512996315501&text=';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'fb://page/1930496377253551/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'instagram://user?username=organize_websites';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://www.google.com/maps/place/Xod%C3%B3+Ra%C3%A7%C3%B5es+e+Acess%C3%B3rios/@-23.4571804,-45.0625251,17z/data=!3m1!4b1!4m5!3m4!1s0x94cd53c1512913ff:0x5ec1ccadac7a6618!8m2!3d-23.4571804!4d-45.0603364';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url = 'https://exclusiveprofessionnel.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}