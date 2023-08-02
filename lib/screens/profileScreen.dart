// import 'package:flutter/material.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';


// class ProfileScreen extends StatefulWidget {
//   static const routeName = "/profileScreen";
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   late AuthUser _user;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentUser();
//   }

//   void _getCurrentUser() async {
//     try {
//       final result = await AmplifyAuthCognito().getCurrentUser();
//       setState(() {
//         _user = result;
//       });
//     } on AuthException catch (e) {
//       print(e.message);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_user == null) {
//       return CircularProgressIndicator();
//     } else {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Username: ${_user.username}'),
//             //Text('Email: ${_user.attributes['email']}'),
//           ],
//         ),
//       );
//     }
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

// class ProfileScreen extends StatefulWidget {
//   static const routeName = "/profileScreen";

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   AuthUser? _user;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentUser();
//   }

//   void _getCurrentUser() async {
//     try {
//       final result = await AmplifyAuthCognito().getCurrentUser();
//       setState(() {
//         _user = result;
//       });
//     } on AuthException catch (e) {
//       print(e.message);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_user == null) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     } else {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Username: ${_user!.username}'),
//             //Text('Email: ${_user!.attributes['email']}'),
//           ],
//         ),
//       );
//     }
//   }
// }

// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

// class ProfileScreen extends StatefulWidget {
//   static const routeName = "/profileScreen";

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   AuthUser? _user;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentUser();
//   }

//   void _getCurrentUser() async {
//     try {
//       final result = await Amplify.Auth.getCurrentUser();
//       setState(() {
//         _user = result;
//       });
//     } on AuthException catch (e) {
//       print(e.message);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_user == null) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     } else {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Username: ${_user!.username}'),
//             FutureBuilder<List<AuthUserAttribute>>(
//               future: Amplify.Auth.fetchUserAttributes(),
//               builder: (BuildContext context,
//                   AsyncSnapshot<List<AuthUserAttribute>> snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return CircularProgressIndicator();
//                 } else if (snapshot.hasError) {
//                   return Text('Error: ${snapshot.error}');
//                 } else if (snapshot.hasData) {
//                   final attributes = snapshot.data!;
//                   final emailAttribute = attributes.firstWhere(
//                     (attribute) => attribute.userAttributeKey == 'email',
//                     // orElse: () =>
//                     //     AuthUserAttribute(userAttributeKey: '', value: 'N/A'),
//                   );
//                   final email = emailAttribute.value;

//                   return Text('Email: $email');
//                 } else {
//                   return Text('No data available');
//                 }
//               },
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }

// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

// class ProfileScreen extends StatefulWidget {
//   static const routeName = "/profileScreen";

//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   AuthUser? _user;

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentUser();
//   }

//   void _getCurrentUser() async {
//     try {
//       final result = await Amplify.Auth.getCurrentUser();
//       setState(() {
//         _user = result;
//       });
//     } on AuthException catch (e) {
//       print(e.message);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_user == null) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     } else {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Username: ${_user!.username}'),
//               Text('Email: ${_user!.userId}'), // Use username as email
//             ],
//           ),
//         ),
//       );
//     }
//   }
// }

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late AuthUser _user;
  String _email = '';

  @override
  void initState() {
    super.initState();
    _getUserAttributes();
  }

  Future<void> _getUserAttributes() async {
    try {
      final authUser = await Amplify.Auth.getCurrentUser();
      final userAttributes = await Amplify.Auth.fetchUserAttributes();

      print('User Attributes: $userAttributes'); // Debug statement

      for (final attribute in userAttributes) {
        print(
            'Attribute: ${attribute.userAttributeKey} - ${attribute.value}'); // Debug statement

        if (attribute.userAttributeKey.toString() == 'email' &&
            attribute.value != null) {
          setState(() {
            _email = attribute.value;
          });
          break;
        }
      }
    } catch (e) {
      print('Failed to retrieve user attributes: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 47, 52, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
        }, 
      ),
        title: Text('Profile',
        style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromRGBO(246, 148, 2, 1),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 80,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Username:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                _email,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}
