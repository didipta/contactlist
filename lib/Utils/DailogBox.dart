import 'package:flutter/material.dart';


void dialogBox(Function() function, BuildContext context,String title,String label) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
        content: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5,
                  height: 2,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(

                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,

                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_outline, size: 20,color: Colors.white,),
                          SizedBox(width: 8),
                          Text('Cancel',style:TextStyle(
                              color: Colors.white
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(

                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                         
                      ),
                      onPressed: () async {

                        function();
                        Navigator.of(context).pop();
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.delete, size: 20,color: Colors.white,),
                          SizedBox(width: 8),
                          Text('Ok',style: TextStyle(
                            color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
