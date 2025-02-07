import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
import 'dart:convert'; 

class AQIpage extends StatefulWidget {
  const AQIpage({super.key});

  @override
  _AQIScreenState createState() => _AQIScreenState();
}

class _AQIScreenState extends State<AQIpage> {
  String city = "Loading...";
  int? aqi;
  double? temperature;
  bool isLoading = true;

  final String apiUrl =
      "https://api.waqi.info/feed/here/?token=baf7a2c01e7d17797b4e27438a19024be85de260";

  @override
  void initState() {
    super.initState();
    fetchAQIData();
  }

  Future<void> fetchAQIData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl)); 

      if (response.statusCode == 200) {
        final data = json.decode(response.body); 

        setState(() {
          city = "Bangkok";
          aqi = data["data"]["aqi"];
          temperature = data["data"]["iaqi"]["t"]["v"].toDouble();
          isLoading = false;
        });
      } else {
        setState(() {
          city = "Error";
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        city = "Failed to fetch data";
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Air Quality Index (AQI)"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Container(
                padding: const EdgeInsets.all(20),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      city,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: aqi != null && aqi! > 100 ? Colors.red : Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        aqi?.toString() ?? "N/A",
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      aqi != null && aqi! > 100 ? "Unhealthy" : "Good",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: aqi != null && aqi! > 100 ? Colors.red : Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Temperature: ${temperature?.toStringAsFixed(1) ?? "N/A"}°C",
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: fetchAQIData,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Refresh",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
