import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants/colors.dart';

class listTilewidget extends StatelessWidget {
  const listTilewidget({
    super.key, required this.icon, required this.textColor, required this.onPressed, required this.title, this.endIcon=true, 
  });

  final IconData icon;
  
  final Color? textColor;
  final VoidCallback onPressed;
  final String title;
  final bool  endIcon;
  
  

  @override
  Widget build(BuildContext context) {
    var isDark=MediaQuery.of(context).platformBrightness==Brightness.dark;
    var iconColor=isDark?AppColors.primaryColor:AppColors.secondaryColor;
     var textColoraman=isDark?AppColors.primaryColor:AppColors.secondaryColor;
    return ListTile(
      onTap: onPressed,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueGrey.withOpacity(0.5)
    
        ),
        child:  Icon(
          icon
          ,color: iconColor,
        ),
              ),
      title: Text(title,style:TextStyle(color: textColoraman)),
      trailing:endIcon? Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.green.withOpacity(0.2)
    
        ),
        child: const Icon(LineAwesomeIcons.angle_right_solid,
          size: 20,)):null);
  }
}
