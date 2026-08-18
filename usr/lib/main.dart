import 'package:flutter/material.dart';

void main() {
  runApp(const MoviePlayHubApp());
}

class MoviePlayHubApp extends StatelessWidget {
  const MoviePlayHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoviePlay Hub',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.blueAccent,
          secondary: Colors.tealAccent,
          surface: Color(0xFF1E1E1E),
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    GamesScreen(),
    MoviesScreen(),
    ReferralsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.sports_esports), label: 'Games'),
          NavigationDestination(icon: Icon(Icons.movie), label: 'Movies'),
          NavigationDestination(icon: Icon(Icons.group_add), label: 'Referrals'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MoviePlay Hub')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text('Welcome, User'),
            subtitle: Text('ID: 123456789'),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Coin Balance', style: TextStyle(fontSize: 16)),
                      Text('1,250', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Daily Bonus'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
            label: const Text('Play Game'),
            style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.movie),
            label: const Text('Movies'),
            style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share),
            label: const Text('Invite Friends'),
            style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
          ),
          const SizedBox(height: 16),
          const ListTile(
            leading: Icon(Icons.leaderboard),
            title: Text('Leaderboard'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const ListTile(
            leading: Icon(Icons.forum),
            title: Text('Community'),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );
  }
}

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Games')),
      body: const Center(child: Text('Games coming soon...')),
    );
  }
}

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies')),
      body: const Center(child: Text('Movies coming soon...')),
    );
  }
}

class ReferralsScreen extends StatelessWidget {
  const ReferralsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Referrals')),
      body: const Center(child: Text('Referrals coming soon...')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile coming soon...')),
    );
  }
}
