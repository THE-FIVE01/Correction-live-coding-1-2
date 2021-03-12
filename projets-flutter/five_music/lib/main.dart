import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'musique.dart';
import 'package:audioplayer/audioplayer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Five Music',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Five Music'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Musique> maListeDeMusique = [
    Musique(titre: 'Theme Swift', artiste: 'the-five', imagePath: 'images/un.jpg', urlsong: 'https://codabee.com/wp-content/uploads/2018/06/un.mp3'),
    Musique(titre: 'Theme Flutter', artiste: 'the-five', imagePath: 'images/deux.jpg', urlsong: 'https://codabee.com/wp-content/uploads/2018/06/deux.mp3')
  ];

  //_________
  Musique maMusiqueActuelle;

  AudioPlayer audioPlayer;
  StreamSubscription positionSub;
  StreamSubscription stateSubscription;
  Duration position = Duration(seconds: 0);
  Duration duree = Duration(seconds: 30);
  PlayerState status = PlayerState.stopped;
  int index = 0;


  @override
  void initState() {
    super.initState();
    maMusiqueActuelle = maListeDeMusique[index];
    configurationAudioPlayer();
  }
  //_________
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              elevation: 9,
              child: Container(
                width: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset(maMusiqueActuelle.imagePath),
              ),
            ),
            textAvecStyle(maMusiqueActuelle.titre, 1.5),
            textAvecStyle(maMusiqueActuelle.artiste, 1.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                boutton(Icons.fast_rewind, 30.0, ActionMusic.rewind),
                boutton((status == PlayerState.playing) ? Icons.pause :  Icons.play_arrow, 45.0, (status == PlayerState.playing) ? ActionMusic.pause: ActionMusic.play),
                boutton(Icons.fast_forward, 30.0, ActionMusic.forward)
              ],
            ),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: <Widget>[
                textAvecStyle(fromDuration(position), 0.8),
                textAvecStyle(fromDuration(duree), 0.8)
              ],
            ),
            Slider(
              value: position.inSeconds.toDouble(), 
              min: 0.0,
              max: 30.0,
              inactiveColor: Colors.white,
              activeColor: Colors.red,
              onChanged: (num d) {
                setState(() {
                  // Duration nouvelleDuration = new Duration(seconds: d.toInt());
                  // position = nouvelleDuration;
                  audioPlayer.seek(d);
                });
              }
            ),
          ],
        ),
      ),
    );
  }
  // IconButton
  IconButton boutton(IconData icone, double taille, ActionMusic action) {
    return IconButton(
      iconSize: taille,
      color: Colors.white,
      icon: Icon(icone), 
      onPressed: () {
        switch (action) {
          case ActionMusic.play:
            play();
            break;
          case ActionMusic.pause:
            pause();
            break;
          case ActionMusic.forward:
            forward();
            break;
          case ActionMusic.rewind:
            rewind();
            break;
        }
      }
    );
  }

  // Fonction permettant d'ajouter un texte avce sa taille rapidement
  Text textAvecStyle(String data, double scale ) {
    return Text(
      data,
      textScaleFactor: scale, // Taille
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontStyle: FontStyle.italic
      ),
    );
  }
// Configuration du lecteur de musique ------------------------------

  void configurationAudioPlayer() {
    audioPlayer = AudioPlayer();
    // quand la position de l'audio à changer, permet de mettre à jour notre slider
    positionSub = audioPlayer.onAudioPositionChanged.listen(
      (pos) => setState(() => position = pos)
    );
    // Si nous somme entrain de jouer et si la musique c'est arrêté
    stateSubscription = audioPlayer.onPlayerStateChanged.listen((state) {
      if(state == AudioPlayerState.PLAYING) {
        setState(() {
          duree = audioPlayer.duration;
        });
      } else if(state == AudioPlayerState.STOPPED) {
        setState(() {
          status = PlayerState.stopped;
        });
      } // Fin ------------------------------------------------------
    },onError: (message) {
      print('erreur: $message');
      setState(() {
        status = PlayerState.stopped;
        duree = Duration(seconds: 0);
        position = Duration(seconds: 0);
      });
    });
  }
  // Fonction pour jouer notre musique

  Future play() async {
    await audioPlayer.play(maMusiqueActuelle.urlsong);
    setState(() {
      status = PlayerState.playing;
    });
  }

  Future pause() async {
    await audioPlayer.pause();
    setState(() {
      status = PlayerState.paused;
    });
  }

  void forward() {
    if (index == maListeDeMusique.length - 1) {
      index = 0;
    } else {
      index++;
    }
    maMusiqueActuelle = maListeDeMusique[index];
    audioPlayer.stop();
    configurationAudioPlayer();
    play();
  }

  void rewind() {
    if(position > Duration(seconds: 3)) {
      audioPlayer.seek(0.0);
    }else {
      if (index == 0) {
        index = maListeDeMusique.length - 1;
      }else{
        index--;
      }
      maMusiqueActuelle = maListeDeMusique[index];
      audioPlayer.stop();
      configurationAudioPlayer();
      play();
    }
  }

  String fromDuration(Duration duree) {
    return duree.toString().split('.').first;
  }

// Fin _--------------------------

}



// Etat du lecteur de musique
enum ActionMusic {
  play,
  pause,
  rewind,
  forward
}

enum PlayerState {
  playing,
  stopped,
  paused
}
