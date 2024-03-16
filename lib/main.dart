import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hmcreators/constants/textfont.dart';
import 'package:hmcreators/constants/themecolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HM Creators',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScrollableWebsite(),
    );
  }
}

class ScrollableWebsite extends StatefulWidget {
  @override
  _ScrollableWebsiteState createState() => _ScrollableWebsiteState();
}

class _ScrollableWebsiteState extends State<ScrollableWebsite> {
  ServiceItem selectedService = ServiceItem(
    icon: Icons.work,
    title: 'Default Service',
    description: 'Default Service Description',
    image: 'background.png',
  );
  final List<ServiceItem> services = [
    ServiceItem(
      icon: Icons.work,
      title: 'Service 1',
      description: 'Description of Service',
      image: 'autocad.png',
    ),
    ServiceItem(
      icon: Icons.work,
      title: 'Service 2',
      description: 'Description of Service',
      image: 'designs.png',
    ),
    ServiceItem(
      icon: Icons.work,
      title: 'Service 3',
      description: 'Description of Service',
      image: '3d_design.png',
    ),
    ServiceItem(
      icon: Icons.work,
      title: 'Service 4',
      description: 'Description of Service',
      image: '3d_render.png',
    ),
    ServiceItem(
      icon: Icons.work,
      title: 'Service 5',
      description: 'Description of Service',
      image: 'autocad.png',
    ),
  ];

  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(int sectionIndex) {
    _scrollController.animateTo(
      MediaQuery.of(context).size.height * sectionIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themewhite,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "logo.png", // Assuming your logo file path
              width: 100,
              height: 70,
            ),
            Row(
              children: [
                _buildNavItem('Home', 0),
                _buildNavItem('About Us', 1),
                _buildNavItem('Services', 3),
                _buildNavItem('Contact Us', 4),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHomePage(),
            _buildAboutUsPage(),
            _buildServicesWidget(),
            if (selectedService != null) _buildServiceDetails(selectedService!),
            ContactFormWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, int sectionIndex) {
    return InkWell(
      onTap: () => _scrollToSection(sectionIndex),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: NormalText(
          title,
        ),
      ),
    );
  }

  Widget _buildHomePage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            autoPlay: true,
            enableInfiniteScroll: true,
          ),
          items: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                child: Image.asset(
                  "background.png", // Assuming your background image file path
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
        ExtraLargeTitle(
          'Revolutionize your Designs with\nHM Creators',
        ),
      ],
    );
  }

  Widget _buildAboutUsPage() {
    bool isExpanded = true;

    return Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExtraBoldText(
                      'Who we are',
                    ),
                    NormalText(
                        "Partner with us for reliable support that empowers your business.\nOur dedicated team delivers seamless operations," +
                            "enhanced efficiency, \nand peace of mind," +
                            "allowing you to focus on what you do best."),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("background.png"),
                          fit: BoxFit.fill)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ExtraBoldText("Our Team"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("logo.png",
                        height: MediaQuery.of(context).size.height * 0.2),
                    BoldText("Zarna Patel"),
                    NormalText("CEO & Founder"),
                    NormalText("Product Manager"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("logo.png",
                        height: MediaQuery.of(context).size.height * 0.2),
                    BoldText("Dhruman Rathod"),
                    NormalText("Assitant Manager"),
                    NormalText("Developer")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("logo.png",
                        height: MediaQuery.of(context).size.height * 0.2),
                    BoldText("Varis"),
                    NormalText("Team Lead"),
                    NormalText("Autocad Designer"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("logo.png",
                        height: MediaQuery.of(context).size.height * 0.2),
                    BoldText("Zarna Patel"),
                    NormalText("Product Designer"),
                    NormalText("Assitant Director")
                  ],
                )
              ],
            )
          ],
        ));
  }

  Widget _buildServicesWidget() {
    return Container(
      color: Colors.brown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Our Services',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 5,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              shrinkWrap: true,
              children: services.map((service) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedService = service;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: const Border.fromBorderSide(
                          BorderSide(color: Colors.grey)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(service.icon),
                        const SizedBox(height: 10),
                        Text(
                          service.title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceDetails(ServiceItem service) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                service.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                service.description,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          Image.asset(
            service.image,
            // Assuming your image file path
          ),
        ],
      ),
    );
  }
}

class ContactFormWidget extends StatefulWidget {
  @override
  _ContactFormWidgetState createState() => _ContactFormWidgetState();
}

class _ContactFormWidgetState extends State<ContactFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: _buildTextField(_firstNameController, 'First Name'),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: _buildTextField(_lastNameController, 'Last Name'),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            _buildTextField(_emailController, 'Email'),
            const SizedBox(height: 10.0),
            _buildTextField(_contactNumberController, 'Contact Number'),
            const SizedBox(height: 10.0),
            _buildTextField(_descriptionController, 'Description'),
            const SizedBox(height: 10.0),
            _buildTextField(_countryController, 'Country'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String placeholder) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: placeholder,
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $placeholder';
        }
        return null;
      },
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      String firstName = _firstNameController.text;
      String lastName = _lastNameController.text;
      String email = _emailController.text;
      String contactNumber = _contactNumberController.text;
      String description = _descriptionController.text;
      String country = _countryController.text;

      print('First Name: $firstName');
      print('Last Name: $lastName');
      print('Email: $email');
      print('Contact Number: $contactNumber');
      print('Description: $description');
      print('Country: $country');
    }
  }
}

class ServiceItem {
  final IconData icon;
  final String title;
  final String description;
  final String image; // Image path

  ServiceItem({
    required this.icon,
    required this.title,
    required this.description,
    required this.image,
  });
}
