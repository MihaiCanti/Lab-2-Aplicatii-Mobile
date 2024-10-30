import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BarberShopPage(),
    );
  }
}

class BarberShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barber Shop | Cantievschii Mihai'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          // Profil utilizator
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('lib/imagini/profile.png'),
            ),
            title: Text('Michael Bay'),
            subtitle: Text('Expert'),
          ),
          // Secțiune promoțională
         Padding(
  padding: const EdgeInsets.all(16.0),
  child: Container(
    height: 150,
    decoration: BoxDecoration(
      color: Colors.orange[100],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        // Imaginea de fundal
        Positioned.fill(
          child: Image.asset(
            'lib/imagini/background.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Suprapunem butonul și textul
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Booking Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {}, // Fără acțiune la apăsare
                child: Text('Booking Now'),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
),

          // Bara de căutare
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search barber’s, haircut services...',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // frizerii apropiate
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Nearest Barbershop', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          // Frizerii (folosim ListView.builder pentru o mai bună performanță)
          BarberShopCard('Alana Barbershop', 'Banguntapan (5 km)', 4.5),
          BarberShopCard('Hercha Barbershop', 'Jalan Kaliurang (8 km)', 5.0),
          BarberShopCard('Barberking', 'Jogja Expo Centre (12 km)', 4.5),
          
          // Buton See All
          Center(
            child: TextButton(
              onPressed: () {}, // fără acțiune la apăsare
              child: Text('See All'),
            ),
          ),
          // frizerii recomandate
          // Secțiune frizerii recomandate
Padding(
  padding: const EdgeInsets.all(16.0),
  child: Text('Most recommended', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
),

// Imaginea cu butonul "Booking Now"
Padding(
  padding: const EdgeInsets.all(16.0),
  child: Container(
    height: 150,
    decoration: BoxDecoration(
      color: Colors.orange[100],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        // Imaginea de fundal
        Positioned.fill(
          child: Image.asset(
            'lib/imagini/background1.jpg', // Calea imaginii tale
            fit: BoxFit.cover,
          ),
        ),
        // Buton "Booking Now" în colțul din dreapta jos
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {}, // Fără acțiune la apăsare
              child: Text('Booking Now'),
            ),
          ),
        ),
      ],
    ),
  ),
),

// Informații despre barbershop sub imagine
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Elite Barbershop',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 4), // spațiu între nume și adresă
      Text(
        'Main Street 123 (3 km)',
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
        ),
      ),
      SizedBox(height: 4), // spațiu între adresă și rating
      Row(
        children: [
          Icon(Icons.star, color: Colors.yellow[700]),
          SizedBox(width: 4),
          Text(
            '5.0',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    ],
  ),
),
          BarberShopCard('Master piece Barbershop', 'Jogja Expo Centre (2 km)', 5.0),
          BarberShopCard('Varcity Barbershop', 'Condongcatur (10 km)', 4.5),
          BarberShopCard('Twinsky Monkey Barber', 'Jl Taman Siswa (8 km)', 5.0),
        ],
      ),
    );
  }
}

// Widget pentru afișarea frizeriilor
class BarberShopCard extends StatelessWidget {
  final String name;
  final String location;
  final double rating;

  BarberShopCard(this.name, this.location, this.rating);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('lib/imagini/barbershop.jpg'),
        ),
        title: Text(name),
        subtitle: Text(location),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.yellow[700]),
            Text(rating.toString()),
          ],
        ),
      ),
    );
  }
}
