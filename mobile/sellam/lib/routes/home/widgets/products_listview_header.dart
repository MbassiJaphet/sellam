import 'package:flutter/material.dart';

String _mostAncients = 'Filter: Most Ancients';
String _mostRecents = 'Filter: Most Recents';
String _increasingPrices = 'Filter: Increasing Prices';
String _decreasingPrices = 'Filter: Deacreasing Prices';
String _dropDownValue = _mostRecents;

class ProductsListViewHeader extends StatefulWidget {
  @override
  _ProductsListViewHeaderState createState() => _ProductsListViewHeaderState();
}

class _ProductsListViewHeaderState extends State<ProductsListViewHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6),
          Text(
            'Home : ADs',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 18),
          DropdownButton<String>(
            value: _dropDownValue,
            onChanged: _handleChange,
            items: <String>[
              _mostRecents,
              _mostAncients,
              _increasingPrices,
              _decreasingPrices
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SizedBox(width: MediaQuery.of(context).size.width - 48, child: Text(value)),
                );
              }).toList(),
            ),
            SizedBox(height: 6),
        ],
      )
    );
  }

  _handleChange(String newValue){
    setState(() {
      _dropDownValue = newValue;
    });
  }

}