import 'package:flutter/material.dart';
import '../utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // signupzv9 (413:2)
        padding: EdgeInsets.fromLTRB(26*fem, 113*fem, 19*fem, 34.67*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),


        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              // signupYTo (413:3)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 38*fem),
              child: Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 32*ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            
            
            
          //1er
          Container(
 margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 3*fem, 31.27*fem),
              
              width: double.infinity,
 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
   
color: Color(0x59000000),
                                        

                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,


      ),
    ],
  ),
  child: Row(
    children: [
      Expanded(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Entrez votre adresse email',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        
        child: Align(
                // useraltXPb (413:26)
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 25*fem,
                  height: 25*fem,
                  child: Image.asset(
                    'assets/page-1/images/user-alt.png',
                    width: 25*fem,
                    height: 25*fem,
                  ),
                ),
              ),


                    
      ),
    ],
  ),
), 









           //2eme
             Container(
 margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 3*fem, 31.27*fem),
              
              width: double.infinity,
 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
   
color: Color(0x59000000),
                                        

                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,


      ),
    ],
  ),
  child: Row(
    children: [
      Expanded(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Entrez votre Nom',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        
        child: Align(
                // useraltXPb (413:26)
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 25*fem,
                  height: 25*fem,
                  child: Image.asset(
                    'assets/page-1/images/user-alt.png',
                    width: 25*fem,
                    height: 25*fem,
                  ),
                ),
              ),


                    
      ),
    ],
  ),
), 

//3eme
 


 Container(
 margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 3*fem, 31.27*fem),
              
              width: double.infinity,
 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
   
color: Color(0x59000000),
                                        

                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,


      ),
    ],
  ),
  child: Row(
    children: [
      Expanded(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Entrez votre Prénom',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        
        child: Align(
                // useraltXPb (413:26)
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 25*fem,
                  height: 25*fem,
                  child: Image.asset(
                    'assets/page-1/images/user-alt.png',
                    width: 25*fem,
                    height: 25*fem,
                  ),
                ),
              ),


                    
      ),
    ],
  ),
), 





 //4eme
 Container(
 margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 3*fem, 31.27*fem),
              
              width: double.infinity,
 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
   
color: Color(0x59000000),
                                        

                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 2*fem,


      ),
    ],
  ),
  child: Row(
    children: [
      Expanded(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true, //masquer mdp
          decoration: InputDecoration(
            hintText: 'Entrez votre mot de passe ',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        
        child: Align(
                // useraltXPb (413:26)
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 25*fem,
                  height: 25*fem,
                  child: Image.asset(
                    'assets/page-1/images/vector-bcy.png',
                    width: 25*fem,
                    height: 25*fem,
                  ),
                ),
              ),


                    
      ),
    ],
  ),
), 









//Bouton Signup


ElevatedButton(
  onPressed: () {
    // Ajoutez ici votre code pour effectuer la fonction de signup



  },
  style: ElevatedButton.styleFrom(
    primary: Color(0xff000000), // couleur de fond
    shape: RoundedRectangleBorder( // bordure arrondie
      borderRadius: BorderRadius.circular(5*fem),
    ),
    elevation: 5, // ombre
  ),
  child: Container(
    
    width: double.infinity,
    height: 48*fem,
    child: Center(
      child: Text(
        'SIGNUP',
        textAlign: TextAlign.center,
        style: SafeGoogleFont (
          'Inter',
          fontSize: 24*ffem,
          fontWeight: FontWeight.w800,
          height: 1.2125*ffem/fem,
        
          color: Color(0xffffffff),
        ),
      ),
    ),
  ),
),






















            Container(
              // group13jnV (413:29)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 21*fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // line2Ez9 (413:31)
                    margin: EdgeInsets.fromLTRB(0*fem, 11*fem, 0*fem, 0*fem),
                    width: 145*fem,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    width: 9*fem,
                  ),
                  Text(
                    // ori8d (413:30)
                    'OR',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 24*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    width: 9*fem,
                  ),
                  Container(
                    // line31Nd (413:32)
                    margin: EdgeInsets.fromLTRB(0*fem, 11*fem, 0*fem, 0*fem),
                    width: 145*fem,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff000000),
                  
                    ),
                  ),
                ],
              ),
            ),
        




//facebook


ElevatedButton(
  onPressed: () {
    // Ajoutez ici votre code de navigation vers Facebook
     String fbUrl = 'https://www.Facebook.com/your-Facebook-page-url';
    launch(fbUrl);
    
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Color(0xff0894f9)),
    ),
  ),
  child: Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 8.25*fem, horizontal: 12.7*fem),
    child: Row(
      children: [
        Container(
          // vectoryim (413:35)
          margin: EdgeInsets.only(right: 58.83*fem),
          width: 18.97*fem,
          height: 22.52*fem,
          child: Image.asset(
            'assets/page-1/images/vector-n5K.png',
            width: 18.97*fem,
            height: 22.52*fem,
          ),
        ),
        Text(
          'Continue with Facebook',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 15*ffem,
            fontWeight: FontWeight.w500,
            height: 1.2125*ffem/fem,
            color: Color(0xff000000),
          ),
        ),
      ],
    ),
  ),
),










//GOOGLE





ElevatedButton(
  onPressed: () {
    // Ajoutez ici votre code de navigation vers gmail
     String fbUrl = 'https://www.Gmail.com/your-Gmail-page-url';
    launch(fbUrl);
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Color.fromARGB(187, 249, 128, 8)),
    ),
  ),
  child: Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 8.25*fem, horizontal: 12.7*fem),
    child: Row(
      children: [
        Container(
          // vectoryim (413:35)
          margin: EdgeInsets.only(right: 58.83*fem),
          width: 18.97*fem,
          height: 22.52*fem,
          child: Image.asset(
            'assets/page-1/images/vector-6tD.png',
            width: 18.97*fem,
            height: 22.52*fem,
          ),
        ),
        Text(
          'Continue with Google',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 15*ffem,
            fontWeight: FontWeight.w500,
            height: 1.2125*ffem/fem,
            color: Color(0xff000000),
          ),
        ),
      ],
    ),
  ),
),



























//APPLE





ElevatedButton(
  onPressed: () {
    // Ajoutez ici votre code de navigation vers Apple
     String fbUrl = 'https://www.Apple.com/your-Apple-page-url';
    launch(fbUrl);
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
    ),
  ),
  child: Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 8.25*fem, horizontal: 12.7*fem),
    child: Row(
      children: [
        Container(
          // vectoryim (413:35)
          margin: EdgeInsets.only(right: 58.83*fem),
          width: 18.97*fem,
          height: 22.52*fem,
          child: Image.asset(
            'assets/page-1/images/vector-sh7.png',
            width: 18.97*fem,
            height: 22.52*fem,
          ),
        ),
        Text(
          'Continue with Apple',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 15*ffem,
            fontWeight: FontWeight.w500,
            height: 1.2125*ffem/fem,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ],
    ),
  ),
),

















            
          
          
          
          
          
          
          
          
          
          
          











          
          
            Container(
              // group8zBw (413:18)
              margin: EdgeInsets.fromLTRB(59*fem, 0*fem, 66*fem, 0*fem),
              width: double.infinity,
              height: 20.33*fem,
              child: Stack(
                children: [
                  Positioned(
                    // alreadyhaveanaccountUso (413:19)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 171*fem,
                        height: 17*fem,
                        child: Text(
                          'Already have an account?',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                 
            
              Positioned(
  // group7WpV (413:20)
  left: 169 * fem,
  top: 0 * fem,
  child: InkWell(
    onTap: () {
      // Ajoutez ici le code pour naviguer vers la page de connexion
    },
    child: Container(
      padding: EdgeInsets.fromLTRB(6.5 * fem, 0 * fem, 6.5 * fem, 0 * fem),
      width: 51 * fem,
      height: 20.33 * fem,
      child: Text(
        'Login',
        textAlign: TextAlign.center,
        style: SafeGoogleFont(
          'Inter',
          fontSize: 14 * ffem,
          fontWeight: FontWeight.w600,
          height: 1.2125 * ffem / fem,
          color: Color(0xff000000),
        ),
      ),
    ),
  ),
),

              
        
              
                ],
              
              ),
            ),
          ],
        ),
      ),
          );
  }
}
