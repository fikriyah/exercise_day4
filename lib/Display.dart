import 'package:flutter/cupertino.dart';
import 'DataModel.dart';
import 'package:flutter/material.dart';
//import 'Layout.dart';


class Display extends StatelessWidget {
  const Display({Key? key, required this.models}) : super(key: key);

   final List<DataModel> models;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Json List'),
        backgroundColor: Colors.pink,
      ),
      
      body: Container(
        color: Colors.white24,
          child: ListView.builder(
             
              itemCount: models.length,
              itemBuilder: (context, list) {
                return Container(                 
                  child:  
                  Column(
                    
                    children: <Widget>[
                    Container(
                      
                      decoration:
                      BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                            ),
                            boxShadow: [
                               BoxShadow(
                                 color: Colors.grey.withOpacity(0.2),
                                 spreadRadius: 3,
                                 blurRadius: 5,
                                 offset: Offset(0, 2), // changes position of shadow
                                 ),

                            ],
                        border: Border.all(color: Colors.grey)),
                        padding: EdgeInsets.all(15.0),
                        margin: EdgeInsets.all(6.0),
                        child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Image(
                              image: NetworkImage(
                                (models[list].avatar != null)?
                                '${models[list].avatar.toString()}':
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNKmeZsnap4PAP9AHD7G0iKd3abMVeFVTdjA&usqp=CAU'
                                
                              ),)
                            ),
                             Container(
                         child: Column(
                            children: [
                             Container(
                                  child: 
                                  Text(models[list].firstName.toString()+" "+ models[list].lastName.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                                 ),
                               Container(
                                  child: Text(models[list].username.toString(),
                                  style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),),
                               ),
                                Container(
                                   child: Text(models[list].status == null? 'Status' : models[list].status.toString(),
                                   style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey)),
                                ),
                            ],
                           )),
                           Container(
                             child: Column(
                               children: [
                                
                                Padding(
                                  padding: EdgeInsets.only(left: 3.0),
                                  child: Text(models[list].lastSeenTime.toString()),
                                  ),

                                  Padding(
                                   padding: EdgeInsets.only(top: 10),
                                   child: Text(models[list].messages == null? ' ': models[list].messages.toString(),
                                  
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),),)
                                 
                               ],) ,)
                           
                           
                        ],)
                    ),
                    
                  ],)
            
                );
              }),
        ));
        
  }
}