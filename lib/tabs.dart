import 'package:flutter/material.dart';
import 'signup.dart';
import 'login.dart';

class AllTabs extends StatelessWidget {
  // final double width = MediaQuery.of(context).size.width;
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,

        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 160 ,
                floating: false,
                // pinned: true,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      "https://cdn.templatepocket.com/wp-content/uploads/2019/10/30181614/social-media-icons.png",
                      fit: BoxFit.cover,
                    )
              ),
              ),
    
              SliverPadding(

                padding: new EdgeInsets.all(3.0),
                sliver: new SliverList(
                  delegate: new SliverChildListDelegate([
                    Image.network("https://i.pinimg.com/originals/f7/5d/94/f75d94874d855a7fcfcc922d89ac5e80.png", height: 90,),
                    TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.yellow[700],
                      indicatorPadding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                      // unselectedLabelColor: Colors.white,
                      tabs: [
                        new Tab( child :Text('Login' ,style: TextStyle(fontWeight: FontWeight.bold),)),
                        new Tab( child :Text('Signup' ,style: TextStyle(fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ]),
                ),
              ),
            ];
          },
   body: TabBarView(
     children: [
         Container(
           child: LogIn(),
         ),
         Container(
           child: Signup(),
         ),
     ],
   ),
        ),

    ));
  }
}

//DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               title: Text("Tabbar in SliverAppbar Example"),
//               pinned: true,
//               floating: true,
//               bottom: TabBar(
//                 tabs: <Widget>[
//                   Tab(
//                     text: "First Tab",
//                   ),
//                   Tab(
//                     text: "Second Tab",
//                   ),
//                 ],
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: TabBarView(
//                 children: <Widget>[
//                   Center(
//                     child: Text("First Tab"),
//                   ),
//                   Center(
//                     child: Text("Second Tab"),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
