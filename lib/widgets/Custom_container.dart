import 'package:flutter/material.dart';
import 'package:nots_app/views/Edite_Note_Page.dart';

class Custom_Container extends StatelessWidget {
  const Custom_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Edite_Note_page().id);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 24),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: Text(
                    'Flutter tips',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
                subtitle: Text(
                  'Build your Career with zeyad Mostafa',
                  style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'May 21 , 5',
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              )
            ],
          )),
    );
  }
}