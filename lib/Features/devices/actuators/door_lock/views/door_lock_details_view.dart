import 'package:fleexa/Features/devices/actuators/door_lock/views/widgets/door_lock_appbar.dart';
import 'package:flutter/material.dart';

class DoorLockDetailsView extends StatelessWidget {
  const DoorLockDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DoorLockAppbar(showActionButton: false),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
