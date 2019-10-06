import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Alert Dialog"),
        backgroundColor: Colors.deepOrange,
      ),

      body: new Center(
        child: Container(
          width: 250.0,
          child: new RaisedButton(
            color: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            elevation: 15.0,
            padding: EdgeInsets.all(10.0),
            child: new Text("Dialog",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white
            ),
            ),
            onPressed: (){
              customDialog(context);
            },

          ),
        ),
      ),

    );
  }

//  void dialogshow(BuildContext context){
//    var alert=new AlertDialog(
//      title: new Text("First Alert Dialog"),
//      content: new Text("I am learning Flutter custom Alert dialog"),
//      actions: <Widget>[
//
//        new FlatButton(
//            onPressed: (){
//              Navigator.of(context).pop();
//            },
//            child: new Text("OK")
//        ),
//      ],
//    );
//    showDialog(
//        context: (context),
//        builder: (_)=>alert
//    );
//  }

 customDialog(BuildContext context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: new Container(
              height: 350.0,
              width: 250.0,
              decoration: new BoxDecoration(
                  color: Colors.green,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    child: new ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: new Image.network("https://images.pexels.com/photos/887821/pexels-photo-887821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        height: 150.0,
                        width: 320.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  new SizedBox(height: 10.0,),

                  new Text("Are you want to buy?",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ),
                  ),

                  new SizedBox(height: 60.0,),

                  new Container(
                    margin: EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        new Expanded(
                          flex: 1,
                          child: new RaisedButton(
                            color: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            elevation: 15.0,
                            child: new Text("SAVE",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                            ),
                            ),
                              onPressed: (){
                                Navigator.of(context).pop();
                              }
                          ),
                          ),

                        new SizedBox(width: 6.0,),
                        new Expanded(
                          flex: 1,
                          child: new RaisedButton(
                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              
                              elevation: 15.0,
                              child: new Text("DELETE",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white
                                ),
                              ),
                              onPressed: (){
                                Navigator.of(context).pop();
                              }
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
}




}
