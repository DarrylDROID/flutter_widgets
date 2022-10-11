part of 'pages.dart';

class BookingInfoWidget extends StatefulWidget {
  const BookingInfoWidget({Key? key}) : super(key: key);
  static const routeName = '/BookingInfoWidget';

  @override
  _BookingInfoWidgetState createState() => _BookingInfoWidgetState();
}

class _BookingInfoWidgetState extends State<BookingInfoWidget> {
  @override
  void initState() {
    super.initState();
  }

  final _bookingKey = GlobalKey<FormState>();
  final ctrlFullName = TextEditingController();
  final ctrlEmailAddress = TextEditingController();
  final ctrlPhoneNumber = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlFullName.dispose();
    ctrlEmailAddress.dispose();
    ctrlPhoneNumber.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Form(
              key: _bookingKey,
              child: Column(
                children: [
                  SizedBox(height: 16),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(),
                      ),
                      controller: ctrlFullName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().isEmpty
                            ? 'Please input your full name!'
                            : null;
                      }),
                  SizedBox(height: 16),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      controller: ctrlEmailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return !EmailValidator.validate(value.toString())
                            ? 'Your email format not valid!'
                            : null;
                      }),
                  SizedBox(height: 16),
                  TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        prefixIcon: Icon(Icons.phone_android),
                        border: OutlineInputBorder(),
                      ),
                      controller: ctrlPhoneNumber,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().length < 6
                            ? 'Your phone number must be 12 characters!'
                            : null;
                      }),
                  SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "City",
                      prefixIcon: Icon(Icons.location_city),
                      border: OutlineInputBorder(),
                    ),
                    controller: ctrlCity,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value.toString().isEmpty
                          ? 'Please input your city location!'
                          : null;
                    },
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (ctrlFullName.text.toString().isEmpty ||
                            ctrlEmailAddress.text.toString().isEmpty ||
                            ctrlPhoneNumber.text.toString().isEmpty ||
                            ctrlCity.text.toString().isEmpty) {
                          showDialog(
                              context: context,
                              builder: ((((context) {
                                return AlertDialog(
                                  title: Text("Booking Failed"),
                                  content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Please fill all form field!"),
                                      ]),
                                );
                              }))));
                        } else {
                          showDialog(
                              context: context,
                              builder: ((((context) {
                                return AlertDialog(
                                    title: Text("Booking Confirmation"),
                                    content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Name: " +
                                              ctrlFullName.text.toString()),
                                          Text("Email: " +
                                              ctrlEmailAddress.text.toString()),
                                          Text("Phone: " +
                                              ctrlPhoneNumber.text.toString()),
                                          Text("City: " +
                                              ctrlCity.text.toString()),
                                        ]),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context,
                                                HomePageWidget.routeName);
                                          },
                                          child: Text("OK"))
                                    ]);
                              }))));
                        }
                      },
                      icon: Icon(Icons.save_outlined),
                      label: Text("Book Now"),
                    ),
                  ),
                ],
              ))),
    );
  }
}
