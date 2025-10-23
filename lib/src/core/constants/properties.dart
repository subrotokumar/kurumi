import 'package:flutter/material.dart';
import 'package:kurumi/src/core/themes/app_theme.dart';

const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kTransparentColor = Colors.transparent;
final kBackgroundColor = AppTheme.background;
final kSecondaryColor = AppTheme.secondaryColor;
const kVersion = "2.2.1";

const List kChanges = [
  {
    "id": 1,
    "title": "New MediaList Type",
    "detail": ["Added \"Repeating\" mediatype list section"],
  },
  {
    "id": 2,
    "title": "UI Improvement",
    "detail": [
      "Enhanced UI for Media Tracker and Dashboard Screen",
      "Displays next airing information on Anime Medialist Screen",
    ],
  },
];
