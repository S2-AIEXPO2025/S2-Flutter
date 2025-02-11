import 'package:flutter/material.dart';

const String pretendard = 'Pretendard';

class S2TextStyle{

  static TextStyle ExtraBold40({
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: 40,
      fontFamily: pretendard,
      fontWeight: FontWeight.w800,
      overflow: TextOverflow.visible,
    );
  }

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

  static TextStyle semiBold20({
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: 20,
      fontFamily: pretendard,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.visible,
    );
  }

  static TextStyle semiBold10({
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: 10,
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

  static TextStyle regular15({
    required Color color
  }) {
    return TextStyle(
        color: color,
        fontSize: 15,
        fontFamily: pretendard,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.visible
    );
  }

  static TextStyle regular13({
    required Color color
  }) {
    return TextStyle(
        color: color,
        fontSize: 13,
        fontFamily: pretendard,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.visible
    );
  }

  static TextStyle regular11({
    required Color color
  }) {
    return TextStyle(
        color: color,
        fontSize: 11,
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
    required Color color, required TextDecoration decoration,
    Color? decorationColor,
    double decorationThickness = 1.0,
    TextDecorationStyle decorationStyle = TextDecorationStyle.solid,
  }) {
    return TextStyle(
        color: color,
        fontSize: 13,
        decoration: decoration,
        decorationColor: decorationColor ?? color,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle,
        fontFamily: pretendard,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.visible,
    );
  }

  static TextStyle medium13_2({
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

  static TextStyle medium12({
    required Color color
  }) {
    return TextStyle(
        color: color,
        fontSize: 12,
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

  static TextStyle regular8({
    required Color color
  }) {
    return TextStyle(
        color: color,
        fontSize: 8,
        fontFamily: pretendard,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.visible
    );
  }
}