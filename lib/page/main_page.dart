import 'package:flutter/material.dart';
import '../components/profile_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Widget')),
      body: Center(
        child: ProfileCard(
          name: 'Kanwara Phutphimsen',
          position: '650710670',
          email: 'phutphimsen_k@silpakorn.edu',
          phoneNumber: '0959752181',
          imageUrl: 'https://scontent.fbkk7-3.fna.fbcdn.net/v/t39.30808-6/554295188_24034161549592940_955680152515500858_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFDKETbOLmGPQha0pM23XIblbjaLxPqBUCVuNovE-oFQOMUEIa36CFGrExm9dsGrcAVeQ0Doc4VKD8elZinH8g2&_nc_ohc=JqEoX7KJuhgQ7kNvwFfr9mi&_nc_oc=AdnSOTKE-3KqPPanoFotuPdJmQfqFb2qjg8RE6LKue4tXdV9ridSqlC2J0Wf_tEt4yY&_nc_zt=23&_nc_ht=scontent.fbkk7-3.fna&_nc_gid=aDbQKKvuKmJ0Nh2XsXRNcA&oh=00_AffkMbanevg1RUsy9Arj0BkphFD2D6Pgv1OkAxJiluZZrA&oe=68F8D4C5',
        ),
      ),
    );
  }
}
