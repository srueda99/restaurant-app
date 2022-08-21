import 'package:flutter/material.dart';

GestureDetector button(VoidCallback function, Color color, String text,
    double width, double height) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: const Color(0xFF1EFC01),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w300,
            color: Color(0xFF000000),
          ),
        ),
      ),
    ),
  );
}
