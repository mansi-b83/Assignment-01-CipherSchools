import 'package:assignment/AppStateNotifier.dart';
import 'package:assignment/reusables.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  // String ddvalue =  'Browse';
  String? ddvalue;
  String recommendcourse_selectedtype = 'Popular';
  final itemSize = 100;
  var courses = [
    'App Development',
    'Web Deb]velopment',
    'Game Development',
    'Data Structures',
    'Programming',
    'Machine Learning',
    'Data Science',
    'Others',
  ];
  var recommendcourse_types = [
    'Popular',
    'Latest'
  ];

  List<CourseCarddetails> items = [
    CourseCarddetails(imgurl: 'https://d3gmywgj71m21w.cloudfront.net/bdc64b30d8b2992575b5aa5a3bc06c42',type: 'Web Development', coursename: 'Cascading Style Sheets (CSS)', noofvideos: 24 , coursetime: '3.0', instr_img: 'https://d3gmywgj71m21w.cloudfront.net/5cf2479a2a7995f728c5c378ac709d70',instr_name: 'Shruti Codes',instr_intro: 'Instructor'),
    CourseCarddetails(imgurl: 'https://d3gmywgj71m21w.cloudfront.net/d503ce11da6c4e393e78e2a48f52172d', type: 'Web Development', coursename: 'Web Development', noofvideos: 138, coursetime: '21.8', instr_img: 'https://d3gmywgj71m21w.cloudfront.net/47bc379cc6b24eca7b9dafd709ddcbab', instr_name: 'Harshit Vashisth', instr_intro: 'Instructor'),
    CourseCarddetails(imgurl: 'https://d3gmywgj71m21w.cloudfront.net/2363ef8011d0970321c09d19a7d20476', type: 'Machine Learning', coursename: 'Pandas Tutorial in Hindi', noofvideos: 8, coursetime: '0.7', instr_img: 'https://d3gmywgj71m21w.cloudfront.net/47bc379cc6b24eca7b9dafd709ddcbab', instr_name: 'Harshit Vashisth', instr_intro: 'Instructor'),
  ];
  ScrollController? _controller;
  moveright(){
    _controller?.animateTo(_controller!.offset + 140 + itemSize,
        curve: Curves.linear, duration: Duration(milliseconds: 300));
  }
  moveleft(){
    _controller?.animateTo(_controller!.offset - 140 - itemSize,
        curve: Curves.linear, duration: Duration(milliseconds: 300));
  }
  @override
  void initState(){
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(3),
                      // child: Image.network('https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png')
                      child: Image(
                        height: 30,
                        image: NetworkImage('https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png'),
                      ),
                ),
                Padding(padding: EdgeInsets.all(3),
                      child: Text(
                        'CipherSchools',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      // color: Colors.white,
                    ),
                    child: Padding(padding: EdgeInsets.all(3),
                      child: DropdownButton(
                        // icon: Icons.browse_gallery_outlined,
                        underline: SizedBox(),
                        hint: Row(
                          children: [
                            Icon(Icons.explore_outlined,
                              color: Theme.of(context).iconTheme.color,
                              size: 18,
                            ),
                            Text('Browse',
                              style: TextStyle(
                                color: Theme.of(context).iconTheme.color,
                              ),
                            ),
                          ],
                        ),
                        value: ddvalue,
                        icon: Icon(Icons.keyboard_arrow_down,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        items: courses.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items,),
                          );
                        }).toList(),
                        onChanged: (String? newval){
                          setState(() {
                            ddvalue = newval!;
                          });
                        },
                        // selectedItemBuilder: (BuildContext context) {
                        //   return courses.map((String value) {
                        //     return Center(
                        //       child: Text(
                        //         recommendcourse_selectedtype,
                        //         style: TextStyle(
                        //           color: Theme.of(context).iconTheme.color,
                        //         ),
                        //       ),
                        //     );
                        //   }).toList();
                        // },

                      ),
                    ),
                  ),
                ),
                // ),
                // Padding(padding: EdgeInsets.all(3),
                //     child: Icon(Icons.notifications_none_outlined)
                // ),
                // Padding(padding: EdgeInsets.all(3),
                //     child: Icon(Icons.search)
                // ),
                Padding(padding: EdgeInsets.all(3),
                  child: Switch(
                    value: Provider.of<AppStateNotifier>(context).isDarkModeOn,
                    onChanged: (chngval){
                      Provider.of<AppStateNotifier>(context, listen: false).updateTheme(chngval);
                    },
                  ),

                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  // height: 200,
                  // width: double.infinity,
                  // child: buildImage(),
                  // child: CarouselSlider.builder(
                  //   itemCount: carouselimages.length,
                  //   itemBuilder: (context, index, realIndex){
                  //     final img = carouselimages[index];
                  //     return buildImage(img,index);
                  //   },
                  //   options: CarouselOptions(
                  //       height: 300,
                  //       autoPlay: true,
                  //       viewportFraction: 1,
                  //       onPageChanged: (index, reason) =>
                  //           setState(() => activeindex = index),
                  //   ),
                  //   // buildIndicator(),
                  // ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      // onPageChanged: (index, reason) =>
                      //     setState(() => activeindex = index),
                    ),
                    items: [
                      'https://d3gmywgj71m21w.cloudfront.net/0e03b57e91b7d1cc2c6a9647c652d591',
                      "https://d3gmywgj71m21w.cloudfront.net/7a96565b354080d95160ca4eded9db61",
                      "https://d3gmywgj71m21w.cloudfront.net/d21a8b2d932adce3bbe79230d5bb92f3",
                      "https://d3gmywgj71m21w.cloudfront.net/013fb2eeedfc57ddbc2675e2e07e7bca",
                    ].map((i) {
                      return Builder(
                          builder: (BuildContext context){
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        // color: const Color(0xff7c94b6),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.xor),
                                          image: NetworkImage(
                                            i,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Image.network(i,
                                    //   colorBlendMode: BlendMode.dstATop),

                                    // SizedBox( height:  10,),
                                    if(i == 'https://d3gmywgj71m21w.cloudfront.net/0e03b57e91b7d1cc2c6a9647c652d591')
                                      Container(
                                        padding: EdgeInsets.only(left: 20,top: 40),
                                        width: 250,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 40,),
                                            Text("Full-Stack Development Using MERN",
                                                style:  TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)
                                            ),
                                            SizedBox(height: 5,),
                                            Container(
                                              child: Text(' Web Development ',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white),
                                              ),
                                              // color: Colors.grey.withOpacity(0.6),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.6),
                                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                              )
                                            ),
                                            SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                Image(
                                                  height: 20,
                                                  image: NetworkImage('https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png'),
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    'CipherSchools',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),

                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            ElevatedButton(
                                              child: Text('Watch'),
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.orangeAccent)
                                              ),
                                              onPressed: (){
                                                print('Watch pressed');
                                              },
                                            )

                                          ],
                                        ),
                                      ),
                                    if(i == 'https://d3gmywgj71m21w.cloudfront.net/7a96565b354080d95160ca4eded9db61')
                                      Container(
                                        padding: EdgeInsets.only(left: 20,top: 40),
                                        width: 250,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 40,),
                                            Text("App Development With Flutter",
                                                style:  TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)
                                            ),
                                            SizedBox(height: 5,),
                                            Container(
                                                child: Text(' App Development ',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                // color: Colors.grey.withOpacity(0.6),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.6),
                                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                                )
                                            ),
                                            SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                Image(
                                                  height: 20,
                                                  image: NetworkImage('https://d3gmywgj71m21w.cloudfront.net/7173bc99e2e091c0f413a6d661699d41'),
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    'Aditya Thakur',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            ElevatedButton(
                                              child: Text('Watch'),
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.orangeAccent)
                                              ),
                                              onPressed: (){
                                                print('Watch pressed');
                                              },
                                            )

                                          ],
                                        ),
                                      ),
                                    if(i == 'https://d3gmywgj71m21w.cloudfront.net/d21a8b2d932adce3bbe79230d5bb92f3')
                                      Container(
                                        padding: EdgeInsets.only(left: 20,top: 40),
                                        width: 250,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 40,),
                                            Text("Python & Django For Beginners",
                                                style:  TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)
                                            ),
                                            SizedBox(height: 5,),
                                            Container(
                                                child: Text(' Programming ',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                // color: Colors.grey.withOpacity(0.6),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.6),
                                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                                )
                                            ),
                                            SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                Image(
                                                  height: 20,
                                                  image: NetworkImage('https://www.cipherschools.com/static/media/Cipherschools_icon@2x.3b571d743ffedc84d039.png'),
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    'CipherSchools',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            ElevatedButton(
                                              child: Text('Watch'),
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.orangeAccent)
                                              ),
                                              onPressed: (){
                                                print('Watch pressed');
                                              },
                                            )

                                          ],
                                        ),
                                      ),

                                    if(i == 'https://d3gmywgj71m21w.cloudfront.net/013fb2eeedfc57ddbc2675e2e07e7bca')
                                      Container(
                                        padding: EdgeInsets.only(left: 20,top: 40),
                                        width: 250,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 40,),
                                            Text("FREE Mock IELTS/TOEFL",
                                                style:  TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)
                                            ),
                                            SizedBox(height: 5,),
                                            Container(
                                                child: Text(' Assessment test ',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                // color: Colors.grey.withOpacity(0.6),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.6),
                                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                                )
                                            ),
                                            SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                networksvg,
                                                // Image(
                                                //   height: 20,
                                                //   // image: NetworkImage('https://languify-assets.s3.ap-south-1.amazonaws.com/images/lang-logo.svg'),
                                                // ),
                                                Padding(padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    'Languify',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 5,),
                                            ElevatedButton(
                                              child: Text('Watch'),
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.orangeAccent)
                                              ),
                                              onPressed: (){
                                                print('Watch pressed');
                                              },
                                            )

                                          ],
                                        ),
                                      ),
                                  ]
                              ),
                            );
                          }
                          );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.all(10),
                  child: Text(
                    'Recommended Courses',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      // color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 10,left: 10),
                      child: Row(
                        children: [
                          DropdownButton(
                            underline: SizedBox(),
                            // hint: Text(
                            //   'Popular'
                            // ),
                            value: recommendcourse_selectedtype,
                            icon: Icon(Icons.keyboard_arrow_down,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            items: recommendcourse_types.map((String type) {
                              return DropdownMenuItem(
                                value: type,
                                child: Text(type),
                              );
                            }).toList(),
                            onChanged: (String? newval){
                              setState(() {
                                recommendcourse_selectedtype = newval!;
                              });
                            },
                            selectedItemBuilder: (BuildContext context) {
                              return recommendcourse_types.map((String value) {
                                return Center(
                                  child: Text(
                                    recommendcourse_selectedtype,
                                    style: TextStyle(
                                      color: Theme.of(context).iconTheme.color,
                                    ),
                                  ),
                                );
                              }).toList();
                            },
                          ),
                        ],
                      ),
                    )
                  ),
                )
              ],
            ),
            Container(
              height: 330,
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _) => SizedBox(width: 12,),
                    itemCount: items.length,
                    itemBuilder: (context,index) => CourseCard(item: items[index]),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Colors.white,
                        ),
                          onPressed: () {
                            moveleft();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                          ),
                      ),
                    ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        moveright();
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      )
                    ),
                  )
                ],
              )
            )

          ],
        ),
      )
    );
  }
  final Widget networksvg = SvgPicture.network(
      'https://languify-assets.s3.ap-south-1.amazonaws.com/images/lang-logo.svg',
      height: 10,
      semanticsLabel: 'Acme Logo'
  );

  Widget CourseCard({required CourseCarddetails item}) => Card(
    // height: 150,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: NetworkImage(item.imgurl),
        ),
        // ClipRRect(
        //   // borderRadius: BorderRadius.circular(15.0),
        //   child: Image.network(imgurl,
        //     height: 150,
        //   ),
        // ),
        SizedBox(height: 15),
        Container(
            padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
            child: Text(item.type,
              style: TextStyle(
                  fontSize: 13,
                  // fontWeight: FontWeight.w500,
                  color: Colors.orangeAccent),
            ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            )
        ),
        SizedBox(height: 5,),
        Padding(padding: EdgeInsets.only(left: 10),
          child: Text(item.coursename,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              // color: Colors.,
            ),
          ),
        ),
        SizedBox(height: 5,),
        Padding(padding: EdgeInsets.only(left: 10),
          child: Text('No.of videos: ${item.noofvideos}',
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 13,
              // color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 5,),
        Padding(padding: EdgeInsets.only(left: 10),
          child: Text('Course time: ${item.coursetime} hours',
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 13,
              // color: Colors.white,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network(item.instr_img,
                      height: 30,
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.only(left: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.instr_name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(item.instr_intro,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

}
class CourseCarddetails {
  final String imgurl;
  final String type;
  final String coursename;
  final int noofvideos;
  final String coursetime;
  final String instr_img;
  final String instr_name;
  final String instr_intro;
  String? intro;

  CourseCarddetails({
    required this.imgurl,
    required this.type,
    required this.coursename,
    required this.noofvideos,
    required this.coursetime,
    required this.instr_img,
    required this.instr_name,
    required this.instr_intro,
    this.intro,
  });
}
