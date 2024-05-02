import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              gradient: LinearGradient(colors: [
                Color(0xff9b84fe),
                Color(0xFFa38bff),
                Color(0xff937bf7),
                Color(0xff8968fc),
                Color(0xff714cf7),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 60,
                  left: 20,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 30,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  right: 25,
                  child: Image.asset(
                    'assets/images/settings.png',
                    height: 30,
                  ),
                ),
                Positioned(
                  top: 70,
                  right: 75,
                  child: Image.asset(
                    'assets/images/arrow.png',
                    height: 30,
                  ),
                ),
                const Positioned(
                  top: 170,
                  left: 30,
                  child: Text(
                    'Brandone Louis',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const Positioned(
                  top: 200,
                  left: 30,
                  child: Text(
                    'California, USA',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Row(
                    children: [
                      const Text(
                        '120k',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Follower',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        '23k',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Following',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Edit profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'assets/images/edit.png',
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// About me
                  const SizedBox(height: 15),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: const Text(
                        'About me',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600),
                      ),
                      backgroundColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/user.png',
                        height: 30,
                      ),
                      trailing: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent.withOpacity(0.1)),
                          child:
                              const Icon(Icons.add, color: Colors.deepPurple)),
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit in leo et mollis. Quisque vehicula a nisl nec vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Work Experience
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: const Text('Work experience',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600),),
                      backgroundColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/bag.png',
                        height: 30,
                      ),
                      trailing: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent.withOpacity(0.1)),
                          child:
                              const Icon(Icons.add, color: Colors.deepPurple)),
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit in leo et mollis. Quisque vehicula a nisl nec vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Education
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: const Text('Education',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600),),
                      backgroundColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/student.png',
                        height: 30,
                      ),
                      trailing: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent.withOpacity(0.1)),
                          child:
                              const Icon(Icons.add, color: Colors.deepPurple)),
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit in leo et mollis. Quisque vehicula a nisl nec vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Skill
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: const Text('Skill',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600),),
                      backgroundColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/connect.png',
                        height: 30,
                      ),
                      trailing: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent.withOpacity(0.1)),
                          child:
                              const Icon(Icons.add, color: Colors.deepPurple)),
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit in leo et mollis. Quisque vehicula a nisl nec vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Language
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: const Text('Language',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600),),
                      backgroundColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/translate.png',
                        height: 30,
                      ),
                      trailing: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent.withOpacity(0.1)),
                          child:
                              const Icon(Icons.add, color: Colors.deepPurple)),
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit in leo et mollis. Quisque vehicula a nisl nec vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  /// Appreciation
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: const Text('Appreciation',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600),),
                      backgroundColor: Colors.white,
                      leading: Image.asset(
                        'assets/images/award.png',
                        height: 30,
                      ),
                      trailing: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurpleAccent.withOpacity(0.1)),
                          child:
                              const Icon(Icons.add, color: Colors.deepPurple)),
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit in leo et mollis. Quisque vehicula a nisl nec vehicula. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),

          /// Bottom navigation bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10)
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/home.png', height: 28),
                Image.asset('assets/images/community.png', height: 28),
                Image.asset('assets/images/add.png', height: 28),
                Image.asset('assets/images/chat.png', height: 28),
                Image.asset('assets/images/save.png', height: 28),
              ],
            ),
          )
        ],
      ),
    );
  }
}
