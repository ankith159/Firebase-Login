import "package:flutter/material.dart";

class ElevatedIconButton extends StatelessWidget {
  // optional variables
  // required variables
  final String text;
  final VoidCallback onClicked;
  final Color colorValue;
  final Icon iconData;

  const ElevatedIconButton({
    Key key,
    @required this.iconData,
    @required this.colorValue,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 40.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(310.0),
            child: Container(
              decoration: BoxDecoration(
                color: colorValue,
              ),
              child: ElevatedButton.icon(
                icon: iconData,
                onPressed: onClicked,
                label: Text(
                  '$text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(
                    0.0,
                    15.0,
                    0.0,
                    15.0,
                  ),
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  // primary: Gradient.lerp(a, b, t)(10, 20, Color(0xffff0000) ),),
                ),
              ),
            ),
          ),
        ),
      );
}
