import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

//class Frame extends StatelessWidget {
//  final Widget child;
//  const Frame(this.child);
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    throw UnimplementedError();
//  }
//
//}

//
// Used for debug only
//
final printHookStream = StreamController<String>.broadcast();

main() {
  //
  // Hook the print() function
  //
  runZoned(
    () {
      runApp(ProviderScope(child: RiverpodExperimentApp()));
    },
    zoneSpecification: ZoneSpecification(
      print: (
        Zone self,
        ZoneDelegate parent,
        Zone zone,
        String line,
      ) {
        parent.print(zone, line);
        printHookStream.add(line);
      },
    ),
  );
}
