

import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bs_ad_calendar/flutter_bs_ad_calendar.dart';
import 'package:patra/NavBar.dart';




class Content {
  String? title;

  Content({
    this.title,
  });
}

class NepaliCalendar extends StatefulWidget {
  const NepaliCalendar({Key? key}) : super(key: key);

  @override
  State<NepaliCalendar> createState() => _NepaliCalendarState();
}

class _NepaliCalendarState extends State<NepaliCalendar> {
  late CalendarType _calendarType;
  late List<DateTime> _holidays;
  late List<Event> _events;
  DateTime? _selectedDate;
  List<Event>? _selectedDateEvents;

  @override
  void initState() {
    super.initState();

    _calendarType = CalendarType.bs;
    _events = _getEvents();


    _holidays = [
      DateTime(2024, 02, 14),
      DateTime(2024, 02, 19),
      DateTime(2024, 03, 08),
      DateTime(2024, 03, 11),
      DateTime(2024, 03, 24),
      DateTime(2024, 03, 25),
      DateTime(2024, 04, 08),
      DateTime(2024, 04, 17),
      DateTime(2024, 05, 01),
      DateTime(2024, 05, 23),
      DateTime(2024, 05, 28),
      DateTime(2024, 08, 19),
      DateTime(2024, 08, 20),
      DateTime(2024, 08, 26),
      DateTime(2024, 09, 06),
      DateTime(2024, 09, 17),
      DateTime(2024, 09, 19),
      DateTime(2024, 09, 25),
      DateTime(2024, 10, 03),
      DateTime(2024, 10, 10),
      DateTime(2024, 10, 11),
      DateTime(2024, 10, 13),
      DateTime(2024, 10, 14),
      DateTime(2024, 10, 31),
      DateTime(2024, 11, 01),
      DateTime(2024, 11, 03),
      DateTime(2024, 11, 04),
      DateTime(2024, 11, 07),
      DateTime(2024, 11, 10),
      DateTime(2024, 11, 15),
      DateTime(2024, 12, 03),
      DateTime(2024, 12, 15),
      DateTime(2024, 12, 25),
      DateTime(2025, 01, 14),
      DateTime(2024, 01, 29),
      DateTime(2024, 01, 30),
      DateTime(2024, 02, 19),
      DateTime(2024, 02, 26),
      DateTime(2024, 02, 28),
      DateTime(2024, 03, 13),
      DateTime(2024, 03, 14),
      DateTime(2025, 01, 29),
      DateTime(2025, 01, 30),
      DateTime(2025, 02, 19),
      DateTime(2025, 02, 26),
      DateTime(2025, 02, 28),
      DateTime(2025, 03, 13),
      DateTime(2025, 03, 14),

      
      
    ];
  }

  List<Event> _getEvents() {
    return [
      Event(
        date: DateTime(2024, 02, 13),
        event: Content(title: 'मङ्गल चौथी व्रत/जनयुद्ध दिवस/तिलकुन्द चौथी/कुम्भ संक्रान्ति/विश्व रेडियो दिवस'),
      ),
      Event(
        date: DateTime(2024, 02, 14),
        event: Content(title: 'वसन्तपञ्चमी व्रत /सरस्वती पूजा (शिक्षण संस्था बिदा)/प्रणय दिवस/राष्ट्रिय पुस्तक दिवस'),
      ),
      Event(
        date: DateTime(2024, 02, 15),
        event: Content(title: 'स्कन्द षष्ठी'),
      ),
      Event(
        date: DateTime(2024, 02, 16),
        event: Content(title: 'अचला सप्तमी'),
      ),
      Event(
        date: DateTime(2024, 02, 18),
        event: Content(title: 'द्रोण नवमी'),
      ),
      Event(
        date: DateTime(2024, 02, 19),
        event: Content(title: 'प्रजातन्त्र दिवस / निर्वाचन दिवस'),
      ),
      Event(
        date: DateTime(2024, 02, 20),
        event: Content(title: 'भीमा एकादशी व्रत'),
      ),
      Event(
        date: DateTime(2024, 02, 21),
        event: Content(title: 'अन्तर्राष्ट्रिय मातृभाषा दिवस/प्रदोष व्रत'),
      ),
      Event(
        date: DateTime(2024, 02, 23),
        event: Content(title: 'पूर्णिमा व्रत/पशुपतिनाथको छाया दर्शन'),
      ),
      Event(
        date: DateTime(2024, 02, 24),
        event: Content(title: 'श्री स्वस्थानी व्रत समाप्ती/माघ स्नान समाप्ती'),
      ),
      Event(
        date: DateTime(2024, 02, 27),
        event: Content(title: 'विश्व गैरसरकारी संस्था दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 01),
        event: Content(title: 'शून्य भेदभाव दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 03),
        event: Content(title: 'विश्व वन्यजन्तु दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 06),
        event: Content(title: 'विजया एकादशी व्रत'),
      ),
      Event(
        date: DateTime(2024, 03, 08),
        event: Content(title: 'महाशिवरात्रि व्रत/नेपाली सेना दिवस/सिलाचःह्रे पूजा/नारी दिवस/प्रदोष व्रत'),
      ),
      Event(
        date: DateTime(2024, 03, 11),
        event: Content(title: 'ग्याल्पो ल्होछार'),
      ),
      Event(
        date: DateTime(2024, 03, 14),
        event: Content(title: 'मीन संक्रान्ति'),
      ),
      Event(
        date: DateTime(2024, 03, 15),
        event: Content(title: 'विश्व उपभोक्ता अधिकार दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 19),
        event: Content(title: 'सामाजिक सेवा दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 20),
        event: Content(title: 'आमलकी एकादशी/विश्व मुख स्वास्थ्य दिवस / अन्तर्राष्ट्रिय खुशी दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 22),
        event: Content(title: 'प्रदोष व्रत/विश्व पानी दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 23),
        event: Content(title: 'विश्व मौसम विज्ञान दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 24),
        event: Content(title: 'फागु पुर्णिमा (पहाडी जिल्ला)/पूर्णिमा व्रत/विश्व क्षयरोग दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 25),
        event: Content(title: 'फागु पुर्णिमा (तराइ बिदा)'),
      ),
      Event(
        date: DateTime(2024, 03, 26),
        event: Content(title: 'तेल लगाउने र आँपको मुजुरा खाने दिन/गणगौर पूजा प्रारम्भ'),
      ),
      Event(
        date: DateTime(2024, 03, 27),
        event: Content(title: 'विश्व रङ्गमञ्च दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 28),
        event: Content(title: 'SEE २०८० प्रारम्भ-अनिवार्य अङ्ग्रेजी'),
      ),
      Event(
        date: DateTime(2024, 03, 29),
        event: Content(title: 'SEE २०८०-अनिवार्य नेपाली'),
      ),
      Event(
        date: DateTime(2024, 03, 30),
        event: Content(title: 'विश्व नेवाः दिवस'),
      ),
      Event(
        date: DateTime(2024, 03, 31),
        event: Content(title: 'SEE २०८०-अनिवार्य गणित'),
      ),
      Event(
        date: DateTime(2024, 04, 01),
        event: Content(title: 'विश्व मूर्ख दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 02),
        event: Content(title: 'भौमाष्टमी व्रत/शीतलाष्टमी व्रत/विश्व अटिजम जागरुकता दिवस/SEE २०८०-अनिवार्य विज्ञान तथा प्रविधि'),
      ),
      Event(
        date: DateTime(2024, 04, 03),
        event: Content(title: 'SEE २०८०-अनिवार्य सामाजिक अध्ययन'),
      ),
      Event(
        date: DateTime(2024, 04, 04),
        event: Content(title: 'SEE २०८०-ऐच्छिक प्रथम'),
      ),
      Event(
        date: DateTime(2024, 04, 05),
        event: Content(title: 'पापमोचनी एकादशी व्रत/SEE २०८०- ऐच्छिक द्वितिय'),
      ),
      Event(
        date: DateTime(2024, 04, 06),
        event: Content(title: 'शनि प्रदोष व्रत/अन्तर्राष्ट्रिय विकास र शान्तिको लागि खेलकुद दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 07),
        event: Content(title: 'विश्व स्वास्थ्य दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 08),
        event: Content(title: 'घोडेजात्रा (काठमाडौँ उपत्यकालाई बिदा)/सोमबारे औंसी'),
      ),
      Event(
        date: DateTime(2024, 04, 09),
        event: Content(title: 'तेल लगाउने र नीमको पात खाने दिन'),
      ),
      Event(
        date: DateTime(2024, 04, 11),
        event: Content(title: 'मत्स्य जयन्ती व्रत/मत्स्यनारायण मेला/गौरी व्रत'),
      ),
      Event(
        date: DateTime(2024, 04, 12),
        event: Content(title: 'अन्तर्राष्ट्रिय मानव अन्तरिक्ष विमान दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 13),
        event: Content(title: 'नयाँ वर्ष / मेष संक्रान्ति / बिस्का: जात्रा'),
      ),
      Event(
        date: DateTime(2024, 04, 15),
        event: Content(title: 'विश्व कला दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 16),
        event: Content(title: 'जनबहा द्यः जात्रा/चैते दशैँ/भाैमाष्टमी व्रत/गोरखकाली पूजा'),
      ),
      Event(
        date: DateTime(2024, 04, 17),
        event: Content(title: 'श्री राम नवमी व्रत'),
      ),
      Event(
        date: DateTime(2024, 04, 18),
        event: Content(title: 'विश्व सम्पदा दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 19),
        event: Content(title: 'पटनहीं घुम्ना / कामदा एकादशी व्रत'),
      ),
      Event(
        date: DateTime(2024, 04, 20),
        event: Content(title: 'छन्द दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 21),
        event: Content(title: 'महावीर जयन्ती/प्रदोष व्रत'),
      ),
      Event(
        date: DateTime(2024, 04, 22),
        event: Content(title: 'विश्व पृथ्वी दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 23),
        event: Content(title: 'लोकतन्त्र दिवस/पूर्णिमा व्रत/हनुमान जयन्ती//विश्व पुस्तक तथा प्रतिलिपि अधिकार दिवस'),
      ),
      Event(
        date: DateTime(2024, 04, 24),
        event: Content(title: 'विसं २०७२ सालको महाभुकम्पको सम्झना/विश्व खोप सप्ताह'),
      ),
      Event(
        date: DateTime(2024, 05, 01),
        event: Content(title: 'अन्तर्राष्ट्रिय श्रमिक दिवस/बुधाष्टमी व्रत/गोरखकाली पूजा'),
      ),
      Event(
        date: DateTime(2024, 05, 03),
        event: Content(title: 'विश्व प्रेस स्वतन्त्रता दिवस'),
      ),
      Event(
        date: DateTime(2024, 05, 08),
        event: Content(title: 'मातातीर्थ औंसी (आमाको मुख हेर्ने दिन)/विश्व रेडक्रस दिवस/कानुन दिवस'),
      ),
       Event(
        date: DateTime(2024, 05, 12),
        event: Content(title: 'भजहर'),
      ),
       Event(
        date: DateTime(2024, 05, 17),
        event: Content(title: 'विश्व दूरसञ्चार दिवस / विश्व उच्च रक्तचाप दिवस'),
      ),
   
      Event(
        date: DateTime(2024, 05, 23),
        event: Content(title: 'बुद्ध जयन्ती / उभौली पर्व / चण्डेश्वरी जात्रा/ चण्डी पूर्णिमा/कुर्म जयन्ती / गोरखनाथ जयन्ती/पूर्णिमा व्रत'),
      ),
      Event(
        date: DateTime(2024, 05, 28),
        event: Content(title: 'गणतन्त्र दिवस'),
      ),
      Event(
        date: DateTime(2024, 05, 26),
        event: Content(title: 'लौव डिउँटा बनैना गाउँक डीउँटा काट्टीक ओ जेठक ओजरीया पाखम बनैना /पुट बढाउ पुजा'),
      ),
     
      Event(
        date: DateTime(2024, 06, 07),
        event: Content(title: 'लौव डिउँटा बनैना गाउँक डीउँटा काट्टीक ओ जेठक ओजरीया पाखम बनैना /पुट बढाउ पुजा'),
      ),
     
      Event(
        date: DateTime(2024, 06, 09),
        event: Content(title: 'राष्ट्रिय कृषक दिवस'),
      ),
      Event(
        date: DateTime(2024, 06, 12),
        event: Content(title: 'सिथि नख:/विश्व बालश्रम विरुद्ध दिवस'),
      ),
       Event(
        date: DateTime(2024, 06, 03),
        event: Content(title: 'लौव डिउँटा बनैना गाउँक डीउँटा काट्टीक ओ जेठक ओजरीया पाखम बनैना /पुट बढाउ पुजा'),
      ),
      Event(
        date: DateTime(2024, 07, 13),
        event: Content(title: 'भानु जयन्ती/ सूर्य पूजा'),
      ),
      Event(
        date: DateTime(2024, 07, 27),
        event: Content(title: 'बिश्व जनसंख्यादिवस'),
      ),
       Event(
        date: DateTime(2024, 07, 11),
        event: Content(title: 'विश्व बुवाआमा दिवस'),
      ),
       Event(
        date: DateTime(2024, 07, 16),
        event: Content(title: 'सवनियाँ/कर्कट सङ्क्रान्ति /थारु गुरिया पर्व'),
      ),
       Event(
        date: DateTime(2024, 07, 17),
        event: Content(title: 'कमैयाँ मुक्ति दिवस/हरिशयनी एकादशी व्रत (तुलसी रोप्ने)/चतुर्मास व्रत आरम्भ'),
      ),
      Event(
        date: DateTime(2024, 08, 08),
        event: Content(title: 'घुघरी भिजैना/गुरही, गुरीया पर्ब '),
      ),
      Event(
        date: DateTime(2024, 08, 09),
        event: Content(title: 'गुरही, गुरीया पर्ब /नाग पञ्चमी व्रत/अन्तर्राष्ट्रिय आदिवासी दिवस'),
      ),
      Event(
        date: DateTime(2024, 08, 19),
        event: Content(title: 'जनै पूर्णिमा / रक्षा बन्धन/पूर्णिमा व्रत/ऋषितर्पणी/संस्कृत दिवस/विश्व फोटोग्राफी दिवस'),
      ),
       Event(
        date: DateTime(2024, 08, 20),
        event: Content(title: 'गाईजात्रा / सापारु (नेवा समुदायलाई मात्र)'),
      ),
       Event(
        date: DateTime(2024, 08, 26),
        event: Content(title: 'श्रीकृष्ण जन्माष्टमी/गाैरा पर्व (सम्बन्धित समुदायलाई मात्र)/गोरखकाली पूजा'),
      ),
       Event(
        date: DateTime(2024, 08, 25),
        event: Content(title: 'राष्ट्रिय धर्मसभा दिवस/गौरा सप्तमी'),
      ),
       Event(
        date: DateTime(2024, 08, 27),
        event: Content(title: 'अस्टीम्की टीक्ना'),
      ),
       Event(
        date: DateTime(2024, 08, 28),
        event: Content(title: 'फरहार, अग्रासन डीहे जैना'),
      ),
       Event(
        date: DateTime(2024, 09, 07),
        event: Content(title: 'अटवारीक भिन्सरीया खैना'),
      ),
       Event(
        date: DateTime(2024, 09, 06),
        event: Content(title: 'हरितालिका तीज (महिला कर्मचारीहरूलाई मात्र)'),
      ),
       Event(
        date: DateTime(2024, 09, 08),
        event: Content(title: 'अटवारी'),
      ),
       Event(
        date: DateTime(2024, 09, 09),
        event: Content(title: 'फरहार, अग्रासन डेना'),
      ),
       Event(
        date: DateTime(2025, 01, 14),
        event: Content(title: 'माघे संक्रान्ति/थारु जाति हरु को नया बर्ष/घ्यु चाकु खाने दिन/उत्तरायण आरम्भ'),
      ),
       Event(
        date: DateTime(2025, 01, 15),
        event: Content(title: 'राष्ट्रिय भुकम्प सुरक्षा दिवस'),
      ),
       Event(
        date: DateTime(2025, 01, 22),
        event: Content(title: 'गोरखकाली पूजा'),
      ),
       Event(
        date: DateTime(2025, 01, 24),
        event: Content(title: 'अन्तर्राष्ट्रिय शिक्षा दिवस'),
      ),
       Event(
        date: DateTime(2025, 01, 25),
        event: Content(title: 'षट्तिला एकादशी व्रत'),
      ),
       Event(
        date: DateTime(2025, 01, 26),
        event: Content(title: 'विश्व कुष्ठरोग दिवस/अन्तर्राष्ट्रिय भन्सार दिवस'),
      ),
       Event(
        date: DateTime(2025, 01, 27),
        event: Content(title: 'सोम प्रदोष व्रत'),
      ),
       Event(
        date: DateTime(2025, 01, 28),
        event: Content(title: 'नेपाल नर्सिङ्ग दिवस'),
      ),
       Event(
        date: DateTime(2025, 01, 29),
        event: Content(title: 'शहीद दिवस'),
      ),
       Event(
        date: DateTime(2025, 01, 30),
        event: Content(title: 'सोनाम ल्होछार/श्रीबल्लभ जयन्ती'),
      ),
       Event(
        date: DateTime(2025, 02, 01),
        event: Content(title: 'तिलकुन्द चौथी'),
      ),
       Event(
        date: DateTime(2025, 02, 02),
        event: Content(title: 'विश्व सिमसार दिवस'),
      ),
       Event(
        date: DateTime(2025, 02, 03),
        event: Content(title: 'वसन्तपञ्चमी व्रत/सरस्वती पूजा (शिक्षण संस्था बिदा)'),
      ),
       Event(
        date: DateTime(2025, 02, 04),
        event: Content(title: 'विश्व क्यान्सर दिवस/स्कन्द षष्ठी/अचला सप्तमी'),
      ),
       Event(
        date: DateTime(2025, 02, 05),
        event: Content(title: 'बुधाष्टमी व्रत/गोरखकाली पूजा'),
      ),
       Event(
        date: DateTime(2025, 02, 06),
        event: Content(title: 'द्रोण नवमी'),
      ),
       Event(
        date: DateTime(2025, 02, 08),
        event: Content(title: 'भीमा एकादशी व्रत'),
      ),
       Event(
        date: DateTime(2025, 02, 09),
        event: Content(title: 'भिष्म द्वादशी'),
      ),
       Event(
        date: DateTime(2025, 02, 10),
        event: Content(title: 'सोम प्रदोष व्रत'),
      ),
       Event(
        date: DateTime(2025, 02, 11),
        event: Content(title: 'पशुपतिनाथको छाया दर्शन/विज्ञानमा महिला पहुँचको अन्तर्राष्ट्रिय दिवस/सुरक्षित इन्टरनेट दिवस'),
      ),
       Event(
        date: DateTime(2025, 02, 12),
        event: Content(title: 'श्री स्वस्थानी व्रत समाप्ती/पूर्णिमा व्रत/माघ स्नान समाप्ती'),
      ),
      
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
     
      backgroundColor: const Color.fromARGB(255, 239, 240, 242),
      appBar: AppBar(
        title: const Text('Tharu Patra'),
        centerTitle: true,
        surfaceTintColor: Colors.deepPurple,
        shadowColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple,
        
        actions: [
          ElevatedButton(
            onPressed: () {
              if (_calendarType == CalendarType.ad) {
                setState(() => _calendarType = CalendarType.bs);
              } else {
                setState(() => _calendarType = CalendarType.ad);
              }
            },
            child: Text(_calendarType == CalendarType.bs ? 'En' : 'ने'),
          ),
        ],
      ),
      body: Column(
        children:[
          Expanded(
            child: Stack(

       
        children: [FlutterBSADCalendar(
          calendarType: _calendarType,
          initialDate: DateTime.now(),
          firstDate: DateTime(2010),
          lastDate: DateTime(2043),
          mondayWeek: false, // true is for Monday, false is  for Sunday
          eventColor: Colors.deepPurple,
          weekendDays: const [
            DateTime.saturday,
          ],
          holidays: _holidays,
          primaryColor: Colors.black,
          weekColor: Colors.deepPurple,
          holidayColor: Colors.red,
          todayDecoration:const BoxDecoration(
            borderRadius:  BorderRadius.all(Radius.circular(50)),
            color: Color.fromARGB(255, 188, 208, 242),
            shape: BoxShape.rectangle,
          ),
          selectedDayDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.deepPurple,
          shape: BoxShape.rectangle,
        ),

         events: _events,
onMonthChanged: (date, events) {
  setState(() {
    _selectedDate = date;
    _selectedDateEvents = events;
  });
},
onDateSelected: (date, events) {
  setState(() {
    _selectedDate = date;
    _selectedDateEvents = events;
  });
},
        ),
if (_selectedDateEvents != null && _selectedDateEvents!.isNotEmpty)
  Positioned(
    top: 180,
    left: 15,
    right: 15,
    child: Container(
      alignment: Alignment.center,
      width: 100,
      height: 350,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(120, 54, 52, 146),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Close button
          Positioned(
            top: 5,
            right: 5,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedDateEvents = []; // Clear events to hide the container
                });
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(5),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
          // Event ListView
          Positioned.fill(
            child: ListView(
              shrinkWrap: true,
              children: _selectedDateEvents!
                  .map(
                    (event) => ListTile(
                      title: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${DateFormat('EEEE').format(_selectedDate!.subtract(Duration(days: 1)))}, ${DateFormat('MMMM').format(_selectedDate!)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 35,
                                ),
                              ),
                              Text(
                                'मिति: ${_selectedDate!.year}-${_selectedDate!.month}-${_selectedDate!.day}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                event.event.title ?? '',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    ),
  ),

            ]
           ),
         )
        ]
      )
    );
  }
}
