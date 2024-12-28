import 'package:flutter/material.dart';

const String pretendard = 'Pretendard';

class S2TextStyle{
  static TextStyle semiBold30({
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: 30,
      fontFamily: pretendard,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle regular30({
    required Color color
  }) {
    return TextStyle(
      color: color,
      fontSize: 30,
      fontFamily: pretendard,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.visible
    );
  }

  static TextStyle medium20({
    required Color color,
  }){
    return TextStyle(
      color: color,
      fontSize: 20,
      fontFamily: pretendard,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.visible
    );
  }

  static TextStyle medium15({
    required Color color
  }) {
    return TextStyle(
      color: color,
      fontSize: 15,
      fontFamily: pretendard,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.visible
    );
  }

  static TextStyle medium13({
    required Color color
  }) {
    return TextStyle(
        color: color,
        fontSize: 13,
        fontFamily: pretendard,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.visible
    );
  }

  static TextStyle regular10({
    required Color color
  }) {
    return TextStyle(
        color: color,
        fontSize: 10,
        fontFamily: pretendard,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.visible
    );
  }
}