import 'package:donut_delivery/main.dart';
import 'package:flutter/material.dart';

push(Widget page)=>Navigator.of(navigator.currentContext!).
push(MaterialPageRoute(builder: (context)=>page));

pushReplacement(Widget page)=>Navigator.of(navigator.currentContext!).
pushReplacement(MaterialPageRoute(builder: (context)=>page));

pushAndRemoveUntil(Widget page)=>Navigator.of(navigator.currentContext!).
pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>page),(route)=>false);

pop()=>Navigator.of(navigator.currentContext!).pop();