import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ================
// MAIN APPLICATION
// ================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),

      home: const ProfilePage(),
    );
  }
}

// ============
// PROFILE PAGE
// ============

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // ===================
  // PROFILE INFORMATION
  // ===================

  String name = "Md. Abdul Latif (Siyam)";
  String email = "siyam.dev@gmail.com";
  String phone = "+8801234567890";
  String location = "Dhaka, Bangladesh";
  String bio = "Flutter Developer";

  // ================
  // TEXT CONTROLLERS
  // ================

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController locationController = TextEditingController();

  final TextEditingController bioController = TextEditingController();

  // =====================
  // EDIT PROFILE FUNCTION
  // =====================

  void editProfile() {
    // Put current profile information in the text fields
    nameController.text = name;
    emailController.text = email;
    phoneController.text = phone;
    locationController.text = location;
    bioController.text = bio;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Edit Profile",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),

          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Name
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                const SizedBox(height: 15),

                // Email
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                const SizedBox(height: 15),

                // Phone
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: "Phone",
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),

                const SizedBox(height: 15),

                // Location
                TextField(
                  controller: locationController,
                  decoration: const InputDecoration(
                    labelText: "Location",
                    prefixIcon: Icon(Icons.location_on),
                  ),
                ),

                const SizedBox(height: 15),

                // Bio
                TextField(
                  controller: bioController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: "Bio",
                    prefixIcon: Icon(Icons.description),
                  ),
                ),
              ],
            ),
          ),

          actions: [
            // Cancel button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),

            // Save button
            ElevatedButton(
              onPressed: () {
                // Update profile dynamically
                setState(() {
                  name = nameController.text.trim();
                  email = emailController.text.trim();
                  phone = phoneController.text.trim();
                  location = locationController.text.trim();
                  bio = bioController.text.trim();
                });

                Navigator.pop(context);

                // Show successful message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Profile updated successfully!"),
                  ),
                );
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  // ===================
  // DISPOSE CONTROLLERS
  // ===================

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    locationController.dispose();
    bioController.dispose();

    super.dispose();
  }

  // ========================
  // PROFILE INFORMATION CARD
  // ========================

  Widget profileItem(IconData icon, String title, String value) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),

      elevation: 2,

      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple.shade50,

          child: Icon(icon, color: Colors.deepPurple),
        ),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(value.isEmpty ? "Not provided" : value),
      ),
    );
  }

  // ==================
  // BUILD PROFILE PAGE
  // ==================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // ---------------- APP BAR ----------------
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),

        centerTitle: true,

        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      // ---------------- BODY ----------------
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ==============
            // PROFILE HEADER
            // ==============

            Container(
              width: double.infinity,

              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),

              decoration: const BoxDecoration(
                color: Colors.deepPurple,

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),

              child: Column(
                children: [
                  // ==============================
                  // TAPPABLE ROUND PROFILE PICTURE
                  // ==============================
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Profile picture tapped!"),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),

                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),

                      child: const CircleAvatar(
                        radius: 60,

                        backgroundImage: AssetImage('assets/images/Siyam.jpg'),
                      ),
                    ),
                  ),
                  // ============
                  // DYNAMIC NAME
                  // ============

                  Text(
                    name.isEmpty ? "No Name" : name,

                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 7),

                  // =============
                  // DYNAMIC EMAIL
                  // =============
                  Text(
                    email.isEmpty ? "No Email" : email,

                    style: const TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ===============
            // PROFILE DETAILS
            // ===============
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Column(
                children: [
                  // Name
                  profileItem(Icons.person, "Name", name),

                  // Email
                  profileItem(Icons.email, "Email", email),

                  // Phone
                  profileItem(Icons.phone, "Phone", phone),

                  // Location
                  profileItem(Icons.location_on, "Location", location),

                  // Bio
                  profileItem(Icons.description, "Bio", bio),

                  const SizedBox(height: 20),

                  // ===================
                  // EDIT PROFILE BUTTON
                  // ===================
                  SizedBox(
                    width: double.infinity,
                    height: 55,

                    child: ElevatedButton.icon(
                      onPressed: editProfile,

                      icon: const Icon(Icons.edit),

                      label: Text(
                        "Edit Profile",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,

                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
