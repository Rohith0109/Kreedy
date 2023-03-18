import 'package:flutter/material.dart';
import 'package:kreedy_assignment/constants/colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(Icons.search, color: searchBarTextColor,),
        hintText: "Search for turfs...",
        hintStyle: TextStyle(color: searchBarTextColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: searchBarColor
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: searchBarColor,
          )
        ),
        fillColor: searchBarColor,
        filled: true
      ),
    );
  }
}