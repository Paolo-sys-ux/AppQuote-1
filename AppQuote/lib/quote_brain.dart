import 'quote.dart';

class QuoteBrain {
  int _quoteNumber = 0;

  List<Quote> _quoteBank = [
    Quote('NOTHING', 'NOTHING'),
    Quote('SUPPORTED PLATFORM', '#1. What type of mobile app suits your needs?'),
    Quote('SUPPORTED DEVICES',
        '#2. Which mobile screen size does your app need to support'),
    Quote('APPLICATION TYPE', '# 3.What type of app do you need?'),
    Quote('USER ACCESS', '#4. Will your users need a usernameand password?'),
    Quote('ACCESSIBILITY', '#5. How will they login?'),
    Quote('USER PROFILE', '#6. Will they have a user profile?'),
    Quote('NOTIFICATIONS', '#7. Will your app use push notifications?'),
    Quote('MESSAGING', '#8. Will your users share information with each other?'),
    Quote(
      'FORM FUNCTION',
      '#9 .Will your app have forms for the user to fill out?',
    ),
    Quote('GPS FUNCTION', '#10. Does your app need to get the user\'s location?'),
    Quote('CAMERA USAGE', '#11. Will your app need capture video or photos?'),
    Quote(
      'E-COMMERCE FUNCTION',
      '#12. Will you be selling anything in you app?',
    ),
    Quote('TYPE OF ITEMS', '#13. What sort of items will you sell?'),
    Quote('DESIGN ASSETS', '#14. Do you have the app artwork created yet?'),
    Quote('WIREFRAMES OR DRAFTS',
        '#15. Do you have an RFP or sketches already created'),
  ];

 
void getThis(){
  _quoteNumber = 0;
}

String getQuestionText() {

  if (_quoteNumber < _quoteBank.length - 1) {
      
      _quoteNumber++;

    
    }
 

return _quoteBank[_quoteNumber].quoteTitle;
}

String getQuestionSubText() {
return _quoteBank[_quoteNumber].quoteSubTitle;
}

}
