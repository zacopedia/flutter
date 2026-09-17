import 'package:flutter/material.dart';

class TextInputForm extends StatefulWidget {
  final bool isdarkMode;
  final VoidCallback onDarkMode;
  const TextInputForm({
    super.key,
    required this.isdarkMode,
    required this.onDarkMode,
  });

  @override
  State<TextInputForm> createState() => _TextInputFormState();
}

class _TextInputFormState extends State<TextInputForm> {
  bool isChecked = false;

  double sliderValue = 0.0;
  String selectedLanguge = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 224, 222, 222)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.notifications,
                        size: 28,
                      ),
                      title: const Text("Notifications"),
                      trailing: Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          }),
                    ),
                    const Divider(),
                    ListTile(
                        leading: const Icon(
                          Icons.dark_mode,
                          size: 28,
                        ),
                        title: const Text("Dark Mode"),
                        trailing: Switch.adaptive(
                            activeColor: Colors.blue,
                            value: widget.isdarkMode,
                            onChanged: (bool value) {
                              widget.onDarkMode();
                            })),
                    const Divider(),
                    ListTile(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.volume_up,
                            size: 28,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("volume: $sliderValue"),
                                Slider(
                                    divisions: 10,
                                    min: 0.0,
                                    max: 100,
                                    value: sliderValue,
                                    onChanged: (double value) {
                                      setState(() {
                                        sliderValue = value;
                                      });
                                    })
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.language,
                        size: 28,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("language"),
                          SizedBox(
                            width: double.infinity,
                            child: DropdownButton<String>(
                                value: selectedLanguge,
                                items: const [
                                  DropdownMenuItem(
                                      value: "English", child: Text("English")),
                                  DropdownMenuItem(
                                      value: "French", child: Text("French")),
                                  DropdownMenuItem(
                                      value: "Arabic", child: Text("Arabic")),
                                  DropdownMenuItem(
                                      value: "Spanish", child: Text("Spanish")),
                                  DropdownMenuItem(
                                      value: "Italian", child: Text("Italian"))
                                ],
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedLanguge = value!;
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 203, 231, 254),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Current Settings",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 67, 111, 221)),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text("Notifications: ${isChecked ? "ON" : "OFF"}"),
                    const SizedBox(height: 12),
                    Text("Dark Mode: ${widget.isdarkMode ? "ON" : "OFF"}"),
                    const SizedBox(height: 12),
                    Text("Volume: $sliderValue"),
                    const SizedBox(height: 12),
                    Text("Language: $selectedLanguge"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
