import 'package:flutter/material.dart';

import 'package:lowkey/screens/modules/sharedExpenditures/sharedExpendituresCard.dart';
import 'package:lowkey/screens/modules/sharedExpenditures/sharedExpendituresScreen.dart';

class ModuleMap {
  Map<String, Widget> map() => {
        'sharedExpendituresCard': SharedExpendituresCard(),
        'sharedExpendituresScreen': SharedExpendituresScreen(),
      };
}
