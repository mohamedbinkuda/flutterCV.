import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1020),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F1020),
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                color: const Color(0xFF1E2040),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 4),
                    CircleAvatar(
                      radius: 81,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: Image.asset(
                          'image/prograemming.png', // تأكد من المسار
                        ).image,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'mohammed syeed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    const Divider(color: Colors.white70, indent: 24, endIndent: 24),
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        // fontFamily: 'Pacifico', // اختياري
                      ),
                    ),
                  ],
                ),
              ),

              // Email
              Container(
                width: double.infinity,
                color: const Color(0xFF31366C),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Email',
                      style: TextStyle(fontSize: 18, color: Colors.white70)),
                  trailing: Text(
                    'mohammedsyeed@gmail.com',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              // Phone
              Container(
                width: double.infinity,
                color: const Color(0xFF44508C),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Phone',
                      style: TextStyle(fontSize: 18, color: Colors.white70)),
                  trailing: Text(
                    '771244258',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              // Skills (no fixed height)
              Container(
                width: double.infinity,
                color: const Color(0xFF5D6BA7),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Skills',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    const Divider(color: Colors.white70),
                    const SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _SkillColumn(
                            title: 'Scientific',
                            items: const [
                              'Developer',
                              'Design',
                              'Reading',
                              'Problem Solving',
                              'Team Work',
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _SkillColumn(
                            title: 'Practical',
                            items: const [
                              'Flutter & Dart',
                              'State Management',
                              'REST APIs',
                              'Clean UI',
                              'Git & GitHub',
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SkillColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const _SkillColumn({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title:',
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        for (int i = 0; i < items.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              '${i + 1}- ${items[i]}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
      ],
    );
  }
}