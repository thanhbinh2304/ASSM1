import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State<InputControlsDemo> {
  // Giá trị của Slider
  double sliderValue = 50;

  // Trạng thái của Switch
  bool isEnabled = false;

  // Giá trị được chọn của RadioListTile
  String selectedGender = 'Male';

  // Ngày được chọn
  DateTime? selectedDate;

  // Hàm mở DatePicker
  Future<void> selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Controls Demo'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // =========================
            // 1. SLIDER
            // =========================

            const Text(
              'Lê Thanh Bình (Slider)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 100,

              label: sliderValue.round().toString(),

              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),

            Text(
              'Current value: ${sliderValue.round()}',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            // =========================
            // 2. SWITCH
            // =========================

            const Text(
              'Active (Switch)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SwitchListTile(
              title: const Text('Is movie active?'),
              value: isEnabled,

              onChanged: (value) {
                setState(() {
                  isEnabled = value;
                });
              },
            ),


            const SizedBox(height: 25),

            // =========================
            // 3. RADIO LIST TILE
            // =========================

            const Text(
              'Genre (RadioListTile)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile<String>(
              title: const Text('Male'),
              value: 'Male',
              groupValue: selectedGender,

              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text('Female'),
              value: 'Female',
              groupValue: selectedGender,

              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),

            Text(
              'Selected: $selectedGender',
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 25),

            // =========================
            // 4. DATE PICKER
            // =========================

            const Text(
              '4. DatePicker',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: selectDate,
              child: const Text('Select Date'),
            ),

            const SizedBox(height: 10),

            Text(
              selectedDate == null
                  ? 'No date selected'
                  : 'Selected date: '
                  '${selectedDate!.day}/'
                  '${selectedDate!.month}/'
                  '${selectedDate!.year}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}