part of 'pages.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  IconData icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mission 1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 118, 206, 247),
              Colors.white,
            ],
          )),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Stack(children: [
                  Image.asset(
                    'assets/images/golden-tulip.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ]),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/skydome.jpg',
                          width: 88,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/kolam-renang.jpg',
                          width: 88,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/kamar-hotel.jpg',
                          width: 88,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/view.jpg',
                          width: 88,
                          height: 88,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Text(
                      'Welcome to Golden Tulip Holland Batu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                flex: 4,
                child: ListView(
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      'The 5-star Golden Tulip Holland Resort is ideally located in the heart of leisure place in Batu, with easy access to family recreational place and entertainments. It offers two food & beverage venues, swimming pools, a spa, a fitness center, a kids playground and meeting room facilities which cater up to 2000 person. \n\n Golden Tulip Holland Resort offers the kind of facilities and services that make travelling with children a breeze. The hotel is geared towards the needs and requirements of all families, big and small. Our hotel offers various activities for kids, along with a pool/slide. \n\n Try our tempting menu of drinks and light meals available 24 hours. When you feel the need of food and beverage, we are ready to serve you. Our business center offers computer use and internet services, photocopying, printing and facsimile.',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor: Color.fromARGB(255, 255, 0, 0),
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
