import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchBox();
}

class _SearchBox extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            width: 130,
            height: 27,
            child: const Center(
              child: SizedBox(
                height: 30,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Bir şeyler yazın...',
                  ),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
