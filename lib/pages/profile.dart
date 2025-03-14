import 'package:flutter/material.dart';

class StuProfile extends StatefulWidget {
  const StuProfile({super.key});

  @override
  State<StuProfile> createState() => _StuProfileState();
}

class _StuProfileState extends State<StuProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Account & Settings",
          style: TextStyle(fontFamily: '', fontWeight: FontWeight.w500),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              height: 140,
              child: Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                elevation: .5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage(
                          'assets/image/logo/logo2.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Moshiur Rahman",
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "rahman15-4766@diu.edu.bd",
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(50, 30),
                                backgroundColor: Colors.black,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent,
                                    size: 18,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "N/A",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 50),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 70,
              child: InkWell(
                // Makes the card tappable
                onTap: () {
                  Navigator.pushNamed(context, '/nav');
                },
                child: Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.grey[500],
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Notifications",
                          style: TextStyle(
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                        Spacer(), // Pushes the arrow to the right dynamically
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.grey[500],
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),
            Text(
              "       ACCOUNT",
              style: TextStyle(
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5),
            cardMethod(context, '/nav', Icons.person_2_rounded, "Profile"),
            cardMethod(context, '/nav', Icons.payment, "Digital Payment"),
            cardMethod(context, '/nav', Icons.save, "Saved Address"),


            SizedBox(height: 15),
            Text(
              "       SETTING",
              style: TextStyle(
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5),

            cardMethod(context, '/nav', Icons.language, "Language"),
            cardMethod(context, '/nav', Icons.lock, "Permissions"),


            SizedBox(height: 15),
            Text(
              "       HELP & LEGAL",
              style: TextStyle(
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5),

            cardMethod(context, '/nav', Icons.phone, "Emargency Support"),
            cardMethod(context, '/nav', Icons.help, "Help"),
            cardMethod(context, '/nav', Icons.support, "Support Request"),

            SizedBox(height: 15),
            Text(
              "       MORE",
              style: TextStyle(
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5),

            cardMethod(context, '/nav', Icons.star, "Rate Us"),
            cardMethod(context, '/nav', Icons.logout, "Log Out"),
            SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}

SizedBox cardMethod(
  BuildContext context,
  String route,
  IconData icon,
  String text,
) {
  return SizedBox(
    width: double.infinity,
    height: 70,
    child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: Colors.grey[500], size: 28),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
