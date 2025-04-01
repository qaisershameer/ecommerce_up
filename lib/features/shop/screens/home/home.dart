import 'package:e_commerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UPrimaryHeaderContainer(
        height: UDeviceHelper.getScreenHeight(context) * 0.4,
        child: Column(),
      ),
    );
  }
}

