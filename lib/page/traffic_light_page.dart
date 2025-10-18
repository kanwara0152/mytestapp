import 'package:flutter/material.dart';
import '../components/traffic_light_circle.dart';

class TrafficLightPage extends StatefulWidget {
  const TrafficLightPage({super.key});

  @override
  State<TrafficLightPage> createState() => _TrafficLightPageState();
}

class _TrafficLightPageState extends State<TrafficLightPage> {
  int _currentLight = 0;

  void _changeLight() {
    setState(() {
      _currentLight = (_currentLight + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traffic Light Animation'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TrafficLightCircle(color: Colors.red, isOn: _currentLight == 0),
            const SizedBox(height: 20),
            TrafficLightCircle(color: Colors.yellow, isOn: _currentLight == 1),
            const SizedBox(height: 20),
            TrafficLightCircle(color: Colors.green, isOn: _currentLight == 2),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _changeLight,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text('เปลี่ยนไฟ'),
            ),
          ],
        ),
      ),
    );
  }
}
