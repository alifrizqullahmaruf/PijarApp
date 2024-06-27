import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';

class TicketSelectionWidget extends StatefulWidget {
  @override
  _TicketSelectionWidgetState createState() => _TicketSelectionWidgetState();
}

class _TicketSelectionWidgetState extends State<TicketSelectionWidget> {
  int selectedTicketIndex = 0;
  List<String> ticketTypes = ["VVIP", "Premium", "Reguler", "Festival"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ChipsChoice<int>.single(
            value: selectedTicketIndex,
            onChanged: (val) => setState(() => selectedTicketIndex = val),
            choiceItems: C2Choice.listFrom<int, String>(
              source: ticketTypes,
              value: (i, v) => i,
              label: (i, v) => v,
            ),
            choiceStyle: C2ChoiceStyle(
              brightness: Brightness.light,
              showCheckmark: false,
              padding: EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              borderColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
