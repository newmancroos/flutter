import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PopupMenuButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          icon: Icon(Icons.view_list),
          onSelected: ((valueselected) {
            print('Value selected: $valueselected');
          }),
          itemBuilder: (BuildContext context) {
            return foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                value: todoMenuItem,
                child: Row(
                  children: <Widget>[
                    Icon(todoMenuItem.icon.icon),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Text(todoMenuItem.title),
                  ],
                ),
              );
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.0);
}

class TodoMenuItem {
  final String title;
  final Icon icon;
  TodoMenuItem({this.title, this.icon});
}

  List<TodoMenuItem> foodMenuList = [
    TodoMenuItem(title: "Fast Food", icon: Icon(Icons.fastfood)),
    TodoMenuItem(title: "Remind Me", icon: Icon(Icons.add_alarm)),
    TodoMenuItem(title: "Flight", icon: Icon(Icons.flight)),
    TodoMenuItem(title: "Music", icon: Icon(Icons.audiotrack)),
  ];