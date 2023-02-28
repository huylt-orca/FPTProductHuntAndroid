import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
class ProfileMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;
  const ProfileMenuWidget(
      { Key? key,
        required this.title,
        required this.icon,
        required this.onPress,
        this.endIcon=true,
        this.textColor
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue.withOpacity(0.1),
        ),
        child: Icon(icon,color: this.textColor),
      ),
      title: Text(title,
        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,
          color: this.textColor
        ),),
      trailing: endIcon? Container(
        width: 30, height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(LineAwesomeIcons.angle_right, size: 18.0,color: Colors.grey,),
      ): null,
    );
  }
}