import 'package:flutter/material.dart';
import 'dart:async';

class FundsScreen extends StatefulWidget {
  static const String routeName = '/funds';
  const FundsScreen({Key? key}) : super(key: key);

  @override
  _FundsScreenState createState() => _FundsScreenState();
}

class _FundsScreenState extends State<FundsScreen> {
  late Timer _timer;
  late DateTime targetTime;

  @override
  void initState() {
    super.initState();
    // Set the target time to 5 hours, 26 minutes, and 40 seconds from now
    targetTime =
        DateTime.now().add(Duration(hours: 5, minutes: 26, seconds: 40));
    // Start the timer to update the UI every second
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      // Call setState to update the UI
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Dispose of the timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitHours = twoDigits(duration.inHours.remainder(24));
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitHours : $twoDigitMinutes : $twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the remaining time
    Duration remainingTime = targetTime.difference(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Funds Screen",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Refresh button logic
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Time Remaining to redeem your funds:",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "${remainingTime.inHours.remainder(24)}",
                        style: TextStyle(
                          fontSize: 42,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        "Hours",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "${remainingTime.inMinutes.remainder(60)}",
                        style: TextStyle(
                          fontSize: 42,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        "Minutes",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "${remainingTime.inSeconds.remainder(60)}",
                        style: TextStyle(
                          fontSize: 42,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(
                        "Seconds",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Current Available Balance:",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  
                  Text("1000.00 USDT",
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                  
                ],
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18),
                            children: [
                              const TextSpan(
                                text: "Wallet Type:  ",
                                style: TextStyle(color: Colors.white70),
                              ),
                              TextSpan(
                                text: "TRC20",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18),
                            children: [
                              const TextSpan(
                                text: "Wallet Address:  ",
                                style: TextStyle(color: Colors.white70),
                              ),
                              TextSpan(
                                text: "ajsknskjTbjfkjisdsj",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18),
                            children: [
                              const TextSpan(
                                text: "Fund Password: ",
                                style: TextStyle(color: Colors.white70),
                              ),
                              TextSpan(
                                text: "*************",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18),
                            children: [
                              const TextSpan(
                                text: "Amount submitted:  ",
                                style: TextStyle(color: Colors.white70),
                              ),
                              TextSpan(
                                text: "1000.00 USDT",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 18),
                            children: [
                              const TextSpan(
                                text: "Available number of Tickets:  ",
                                style: TextStyle(color: Colors.white70),
                              ),
                              TextSpan(
                                text: "10",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Per Ticket: 100 USDT")
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        // Add your withdraw logic here
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your submit funds logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Withdraw',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Column(

               children: [
                 Text(
                     "Withdrawal Instructions:",
                   style: TextStyle(
                     color: Theme.of(context).colorScheme.primary,
                     fontSize: 22
                   ),
                 ),
                 const SizedBox(height: 18),
                const Text("1. Please confirm whether Wallet address: is correct. If the information is incorrectly filled in, we will not be responsible for any loss of your insurance."),
                 const SizedBox(height: 18),
                 const Text("2. The withdrawal amount will be processed within 24 hours."),
                 const SizedBox(height: 18),
                 const Text("3. You can only apply for withdrawals only once per day."),
               ],
              )
            ],
          ),
        ),
      ),
    );
  }
}