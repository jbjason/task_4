// ignore_for_file: use_build_context_synchronously
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:provider/provider.dart';
import 'package:task_4/core/util/mycolor.dart';
import 'package:task_4/features/home/presentation/screens/home_screen.dart';
import 'package:task_4/features/home/providers/home_provider.dart';

class ConnectionCheckScreen extends StatefulWidget {
  const ConnectionCheckScreen({super.key, required this.child});
  final Widget child;
  @override
  State<ConnectionCheckScreen> createState() => _ConnectionCheckScreenState();
}

class _ConnectionCheckScreenState extends State<ConnectionCheckScreen> {
  final GlobalKey _alertKey = GlobalKey();
  StreamSubscription? _internetStreamSubscription;
  bool _isFirstTime = true;

  @override
  void initState() {
    super.initState();
    _internetStreamSubscription =
        InternetConnection().onStatusChange.listen((status) {
      if (status == InternetStatus.connected) {
        if (!_isFirstTime) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
            (_) => false,
          );
        }
      } else {
        if (_isFirstTime) setState(() => _isFirstTime = false);
        _showAlertDialog(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          key: _alertKey,
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.wifi_off, size: 50, color: Colors.grey),
              SizedBox(height: 10),
              Text(
                "Please check your internet connection and try again.",
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                final data = Provider.of<HomeProvider>(context, listen: false);
                data.fetchHiveBoxInfo();
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColor.bluePrimary),
              child: const Text(
                "Try Offiline Mode",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _internetStreamSubscription?.cancel();
    super.dispose();
  }
}
