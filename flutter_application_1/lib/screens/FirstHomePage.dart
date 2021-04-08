import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomepAgeFirstUI(),
    );
  }
}

class HomepAgeFirstUI extends StatelessWidget {
  // final List cards = new List.generate(20, (i) => new GrisCards());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 25.0),
          new Padding(
            padding: EdgeInsets.only(
              top: 12.0,
              left: 12.0,
              right: 12.0,
            ),
            child: new Row(
              children: [
                new Column(
                  children: [
                    new Icon(Icons.flag, color: Colors.red),
                  ],
                ),
                SizedBox(
                  width: 5.0,
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text(
                      'You are here',
                      style: GoogleFonts.poppins(
                          color: HexColor("#B8B8B8"), fontSize: 10),
                      textAlign: TextAlign.start,
                    ),
                    new Text(
                      'Select from here',
                      style: GoogleFonts.poppins(
                        color: HexColor("#373539"),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                new Spacer(),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Icon(Icons.person_outline),
                  ],
                ),
              ],
            ),
          ),
          new Divider(),
          _scrollViewContents(context),
        ],
      ),
    );
  }
}

Widget _scrollViewContents(BuildContext context) {
  return new Column(
    children: [
      new Padding(
        padding: EdgeInsets.only(
          top: 4.0,
          right: 12.0,
          left: 12.0,
          bottom: 12.0,
        ),
        child: new Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(1.0, 1.0),
            ),
          ]),
          child: new TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: new Icon(
                Icons.search,
                color: Colors.red,
              ),
              suffixIcon: new Icon(
                Icons.mic,
                color: Colors.red,
              ),
              hintText: "What are you looking for?",
              hintStyle: GoogleFonts.poppins(
                color: HexColor("#B8B8B8"),
                fontSize: 12.0,
              ),
            ),
          ),
        ),
      ),
      ///////////////////////////////////////////////////////////////////
      new SizedBox(
        height: 3.0,
      ),
      new Padding(
        padding: EdgeInsets.only(
          right: 12.0,
          left: 12.0,
        ),
        child: new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new Text(
                "Offers Near By",
                style: GoogleFonts.poppins(
                  color: HexColor("#4E4E4E"),
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new Icon(
                Icons.more_horiz,
                color: HexColor("#B9B9B9"),
              ),
            ],
          ),
        ),
      ),
      ///////////////////////////////////////////////////////////////////
      new SizedBox(
        height: 3.0,
      ),
      new Container(
        height: 103.0,
        child: _horizontalListView(context),
      ),
      ///////////////////////////////////////////////////////////////////
      new SizedBox(
        height: 3.0,
      ),
      new Padding(
        padding: EdgeInsets.only(
          right: 12.0,
          left: 12.0,
        ),
        child: new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new Text(
                "Todays offers on near by restaurant & Hotels",
                style: GoogleFonts.poppins(
                  color: HexColor("#4E4E4E"),
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new Icon(
                Icons.more_horiz,
                color: HexColor("#B9B9B9"),
              ),
            ],
          ),
        ),
      ),
      new Container(
        height: 167.0,
        child: _secondHorizontalListView(context),
      ),
      ///////////////////////////////////////////////////////////////////
      new Divider(),
      new SizedBox(
        height: 3.0,
      ),
      new Padding(
        padding: EdgeInsets.only(
          right: 12.0,
          left: 12.0,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 2.8,
          width: MediaQuery.of(context).size.width,
          child: _gridView(context),
        ),
      ),
      ///////////////////////////////////////////////////////////////////
    ],
  );
}

/// ------------------INDIVIDUAL WIDGET START FROM HERE--------------------------
Widget _gridView(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    removeBottom: true,
    removeLeft: true,
    removeRight: true,
    child: GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      childAspectRatio: 3 / 2,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Card(
          color: HexColor("#5779FF"),
          child: new Padding(
            padding: EdgeInsets.all(14.0),
            child: _gridCardViewContents(context),
          ),
        ),
        Card(
          color: HexColor("#2900FF"),
        ),
        Card(
          color: HexColor("#12CE44"),
        ),
        Card(
          color: HexColor("#FF9100"),
        ),
      ],
    ),
  );
}

Widget _gridCardViewContents(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: new Image.asset(
              "assets/fork.png",
              width: 40.0,
              height: 40.0,
            ),
          ),
          Container(
            child: new Text(
              '3 near by',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      new Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: new Text(
              'Restaurent',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _horizontalListView(BuildContext context) {
  return Expanded(
    child: new ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(right: 11.0, left: 11.0),
      children: <Widget>[
        _cardView(context),
      ],
    ),
  );
}

Widget _cardView(BuildContext context) {
  return new Container(
    width: 103.0,
    height: 103.0,
    child: new Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.red,
      child: Image.network(
        // "",
        "https://kikkidu.com/wp-content/uploads/2011/03/kalyanSilks.jpg",
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget _secondHorizontalListView(BuildContext context) {
  return Expanded(
    child: new ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(right: 11.0, left: 11.0),
      children: <Widget>[
        _secondCardView(context),
      ],
    ),
  );
}

Widget _secondCardView(BuildContext context) {
  return new Container(
    width: 122.0,
    height: 168.0,
    child: new Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.red,
      child: Image.network(
        "https://fsa.zobj.net/crop.php?r=jKJ54nY70YI_7AmLmWR5dF-PYh6LZ_TzJX1fHKTFqKUPH30wmn7p3x8q_Pz3h5g_Kx1FHDu3QP4dZ0H1Obyr7uTE6e0rvmRyoed1d5BOpUevT8760AFNZ63WpPoRS43mdWiuTYHc3PjE74_l",
        fit: BoxFit.fill,
      ),
    ),
  );
}
