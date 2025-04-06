import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
      appBar: UAppBar(
          title: Text('Add New Address',
              style: Theme.of(context).textTheme.headlineMedium),
          showBackArrow: true),

      ///-----[Body]-----
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// Name
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
              SizedBox(height: USizes.spaceBtwInputFields),

              /// Phone Number
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: 'Phone Number')),
              SizedBox(height: USizes.spaceBtwInputFields),

              Row(
                children: [
                  /// Street
                  Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.building_31),
                              labelText: 'Street'))),
                  SizedBox(width: USizes.spaceBtwInputFields),

                  /// Postal Code
                  Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.code),
                              labelText: 'Postal Code'))),
                ],
              ),
              SizedBox(height: USizes.spaceBtwInputFields),

              Row(
                children: [
                  /// City
                  Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.building),
                              labelText: 'City'))),
                  SizedBox(width: USizes.spaceBtwInputFields),

                  /// State
                  Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.activity),
                              labelText: 'State'))),
                ],
              ),
              SizedBox(height: USizes.spaceBtwInputFields),

              /// Country
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: 'Country')),
              SizedBox(height: USizes.spaceBtwSections),

              /// Save Button
              UElevatedButton(onPressed: () {}, child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
