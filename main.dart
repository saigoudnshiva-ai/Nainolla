import 'package:flutter/material.dart';

void main() {
  runApp(CampXApp());
}

class CampXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampX Student App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profile': (context) => ProfilePage(),
        '/clubs': (context) => ClubsPage(),
        '/events': (context) => EventsPage(),
        '/attendance': (context) => AttendancePage(),
        '/fees': (context) => FeesPage(),
      },
    );
  }
}

// ---------------- LOGIN PAGE -----------------
class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to CampX!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder()),
            ),
            SizedBox(height: 15),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text("New user? Register here"),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- REGISTER PAGE -----------------
class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text("Create Your Account", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(controller: nameController, decoration: InputDecoration(labelText: "Name", border: OutlineInputBorder())),
            SizedBox(height: 15),
            TextField(controller: emailController, decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder())),
            SizedBox(height: 15),
            TextField(controller: passwordController, obscureText: true, decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder())),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}

// ---------------- PROFILE PAGE -----------------
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
            child: CircleAvatar(radius: 50, backgroundColor: Colors.deepPurple, child: Icon(Icons.person, size: 50, color: Colors.white)),
          ),
          SizedBox(height: 20),
          Center(child: Text("Student Name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
          Center(child: Text("student@campx.edu")),
          SizedBox(height: 30),
          Divider(),
          ListTile(leading: Icon(Icons.group), title: Text("Campus Clubs"), onTap: () => Navigator.pushNamed(context, '/clubs')),
          ListTile(leading: Icon(Icons.event), title: Text("Campus Events"), onTap: () => Navigator.pushNamed(context, '/events')),
          ListTile(leading: Icon(Icons.check_circle), title: Text("Attendance"), onTap: () => Navigator.pushNamed(context, '/attendance')),
          ListTile(leading: Icon(Icons.attach_money), title: Text("Fees"), onTap: () => Navigator.pushNamed(context, '/fees')),
          ListTile(leading: Icon(Icons.logout), title: Text("Logout"), onTap: () => Navigator.pushReplacementNamed(context, '/login')),
        ],
      ),
    );
  }
}

// ---------------- CLUBS PAGE -----------------
class ClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Campus Clubs")),
      body: ListView(
        children: [
          ListTile(title: Text("Coding Club"), subtitle: Text("Learn programming together")),
          ListTile(title: Text("Music Club"), subtitle: Text("Express musical talent")),
          ListTile(title: Text("Sports Club"), subtitle: Text("Play & Compete in sports")),
        ],
      ),
    );
  }
}

// ---------------- EVENTS PAGE -----------------
class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Campus Events")),
      body: ListView(
        children: [
          ListTile(title: Text("Hackathon"), subtitle: Text("12th Sept 2025")),
          ListTile(title: Text("Cultural Fest"), subtitle: Text("20th Sept 2025")),
          ListTile(title: Text("Sports Meet"), subtitle: Text("1st Oct 2025")),
        ],
      ),
    );
  }
}

// ---------------- ATTENDANCE PAGE -----------------
class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Attendance")),
      body: ListView(
        children: [
          ListTile(title: Text("DDB"), trailing: Text("90%")),
          ListTile(title: Text("DevOps"), trailing: Text("85%")),
          ListTile(title: Text("DAA"), trailing: Text("95%")),
        ],
      ),
    );
  }
}

// ---------------- FEES PAGE -----------------
class FeesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fees Status")),
      body: ListView(
        children: [
          ListTile(title: Text("Tuition Fee"), trailing: Text("Paid")),
          ListTile(title: Text("Library Fee"), trailing: Text("Pending")),
          ListTile(title: Text("Sports Fee"), trailing: Text("Paid")),
        ],
      ),
    );
  }
}
