import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('QR Dev Team', style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text('qrdevteam@gmail.com', style: Theme.of(context).textTheme.bodyMedium),
      trailing: IconButton(onPressed: (){}, icon: Icon(Iconsax.edit)),
    );
  }
}