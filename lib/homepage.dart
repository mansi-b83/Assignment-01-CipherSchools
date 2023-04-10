import 'package:assignment/reusables.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CS_benefits> items = [
    CS_benefits(title: 'Projects', content: 'Get hands-on experience with real-time projects guided by expert mentors!', icon: Icons.panorama_outlined, freetag: 'https://www.cipherschools.com/static/media/free-svg.e7986dfdff58e1459312868d65c77d53.svg'),
    CS_benefits(title: 'Q-rated Content', content: 'Unlock quality content with our Q-rated content!', icon: Icons.content_paste, freetag: 'https://www.cipherschools.com/static/media/free-svg.e7986dfdff58e1459312868d65c77d53.svg'),
    CS_benefits(title: 'Earn CipherPoints', content: 'Earn exclusive rewards by developing your skills with us!', icon: Icons.control_point_duplicate, freetag: 'https://www.cipherschools.com/static/media/free-svg.e7986dfdff58e1459312868d65c77d53.svg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'CipherSchools',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Container(
          width: 100,
          child: Row(
            children: [
              Expanded(
                child: Padding(padding: EdgeInsets.all(10),
                  child: Image(
                    height: 30,
                    image: NetworkImage('https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png'),
                  ),
                ),
              ),
              // ),
              // Flexible(
            ],
          ),

        ),
        actions: [
          IconButton(
            onPressed: (){
            },
            icon: Icon(Icons.menu,
              color: Colors.black,

            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 80),
        child: ListView(
          children: [
            Container(
                // margin: EdgeInsets.only(top: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'the Future ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 40,
                        ),
                      ),
                      TextSpan(
                        text: 'of Learning!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      )
                    ]
                  ),
                )
            ),
            Padding(padding: EdgeInsets.all(20),
              child: Container(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Start Learning by best creators for ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.42),
                        ),
                      ),
                      TextSpan(
                        text: 'absolutely Free ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.orange,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Expanded(
                    Column(
                      children: [
                        // Padding(padding: EdgeInsets.only(left: 20,right: 20),
                          displayStackedImages(),
                        // ),
                      ],
                    // ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15,right: 15),
                      child: Column(
                        children: [
                          // Padding(padding: EdgeInsets.only(left: 20,right: 20),
                            Text('50+',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          // ),
                          // Padding(padding: EdgeInsets.only(left: 20,right: 20),
                          Text('Mentors',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.42),
                            ),
                            // ),
                          )
                        ],
                      ),
                  ),
                  Expanded(
                      child: Column(
                        children: [
                            Text(
                              '4.8/5',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RatingBar(
                                  initialRating: 4.5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 15,
                                  ratingWidget: RatingWidget(
                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                  ignoreGestures: true,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Ratings',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(0.42),
                                  ),
                                ),
                              )
                              // )
                            ],
                          ),
                        ],
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Start Learning Now',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),

                      ),
                      Padding(padding: EdgeInsets.only(left: 15),
                        child: Icon(Icons.arrow_forward_outlined),
                      )
                    ],
                  ),
                  onPressed: (){},
                ),
              ),
            ),
            SizedBox(height: 30),
            CarouselSlider.builder(
                itemCount: items.length,
                itemBuilder: (context, index, realIndex){
                  // final item = items[index];
                  return CS_benifitCard(item: items[index]);
                },
                options: CarouselOptions(
                  height: 250,
                  // autoPlay: true,
                  // autoPlayInterval: Duration(seconds: 5),
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height
                )),

          ],
        ),
      )
    );
  }

  //Widget for retrieving svg image
  Widget networksvg(svgimgurl) => SvgPicture.network(
      '$svgimgurl',
      height: 40,
      semanticsLabel: 'free tag'
  );

  //Widget for displaying content of CipherSchools benefits Card
  Widget CS_benifitCard({required CS_benefits item}) => Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blueGrey[900],
    ),
    // padding: EdgeInsets.symmetric(horizontal: 35),
    margin: EdgeInsets.symmetric(horizontal: 1),
    child: Column(
      children: [
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.all(15),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(item.icon,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
               alignment: Alignment.centerRight,
              child: networksvg(item.freetag),
            )
          ],
        ),
        SizedBox(height: 10,),
        Container(
            child: Text(
              item.title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        // SizedBox(height: 10,),
        Padding(padding: EdgeInsets.all(15),
          child: Container(
            child: Text(
              item.content,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.white.withOpacity(0.57),
              ),
            ),
          ),

        )
      ],
    ),
  );

  Widget displayStackedImages(){
    final double size = 50;
    final instr_imgs = [
      'https://images.pexels.com/photos/1181293/pexels-photo-1181293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/785667/pexels-photo-785667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ];
    final items =  instr_imgs.map((img) => createStackedImages(img)).toList();
    return StackedWidgets(
    items: items,
    size: size,
    );
  }

  Widget createStackedImages(String img){
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.white,
        child: ClipOval(
          child: Image.network(
            img,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}

class CS_benefits{
  final String title;
  final String content;
  final IconData icon;
  final String freetag;

  CS_benefits({
    required this.title,
    required this.content,
    required this.icon,
    required this.freetag,
});
}
