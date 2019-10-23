// Author: Heitor Klaus
// E-mail: heitorklaus@hotmail.com
// Flutter Level: Beginer
// Enjoy!!! please suggest improvements to class

import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatefulWidget {
  TextFormFieldCustom(
      {Key key,
      this.placeholder,
      this.onPressed,
      this.validator,
      this.autovalidate,
      this.obscureText,
      this.focusNode,
      this.controller,
      this.onFieldSubmitted,
      this.onChanged,
      this.onEditingComplete,
      this.onSaved,
      this.onTap,
      this.readonly,
      this.style,
      this.decoration,
      this.keyboardType,
      this.borderColorFocus,
      this.backgroundColor,
      this.suffixIcon,
      this.prefixIcon,
      this.paddingAll,
      this.paddingLeft,
      this.paddingRight,
      this.paddingTop,
      this.paddingBottom,
      this.width,
      this.borderInput,
      this.borderRadius,
      this.keyForm,
      this.borderColor})
      : super(key: key);

  final VoidCallback onPressed;
  final InputDecoration decoration;
  final String placeholder;
  final FormFieldValidator<String> validator;
  bool autovalidate = false;
  bool obscureText = false;
  final FocusNode focusNode;
  final TextEditingController controller;
  final ValueChanged<String> onFieldSubmitted;
  final ValueChanged<String> onChanged;
  final VoidCallback onEditingComplete;
  final FormFieldSetter<String> onSaved;
  final GestureTapCallback onTap;
  bool readonly = true;
  final TextStyle style;
  final TextInputType keyboardType;
  final Color borderColorFocus;
  final Color backgroundColor;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final double paddingAll;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double width;
  final double borderInput;
  final double borderRadius;
  Color borderColor;
  final Key keyForm;
  _TextFormFieldCustomState createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom>
    with TickerProviderStateMixin {
  Color borderColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    borderColor = widget.borderColor;
    widget.focusNode.addListener(() {
      if (widget.focusNode.hasFocus == false) {
        setState(() {
          borderColor = widget.borderColor;
        });
      }
      if (widget.focusNode.hasFocus == false) {}
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: widget.width,
          child: Padding(
              padding: widget.paddingAll == null
                  ? EdgeInsets.all(0)
                  : EdgeInsets.all(widget.paddingAll),
              child: Padding(
                padding: widget.paddingLeft == null
                    ? EdgeInsets.only(left: 0)
                    : EdgeInsets.only(left: widget.paddingLeft),
                child: Padding(
                  padding: widget.paddingRight == null
                      ? EdgeInsets.only(right: 0)
                      : EdgeInsets.only(right: widget.paddingRight),
                  child: Padding(
                    padding: widget.paddingTop == null
                        ? EdgeInsets.only(top: 0)
                        : EdgeInsets.only(top: widget.paddingTop),
                    child: Padding(
                      padding: widget.paddingBottom == null
                          ? EdgeInsets.only(bottom: 0)
                          : EdgeInsets.only(bottom: widget.paddingBottom),
                      child: Container(
                          // margin: EdgeInsetsDirectional.only(
                          // start: MediaQuery.of(context).size.width / 5),
                          child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                //  width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: widget.backgroundColor,
                                    border: Border.all(
                                        color: borderColor == null
                                            ? Colors.black
                                            : borderColor,
                                        width: widget.borderInput == null
                                            ? 1
                                            : widget.borderInput,
                                        style: BorderStyle.solid),
                                    borderRadius: new BorderRadius.all(
                                        Radius.circular(
                                            widget.borderRadius == null
                                                ? 1
                                                : widget.borderRadius))),
                              ),
                              Center(
                                child: TextFormField(
                                  key: widget.keyForm,
                                  focusNode: widget.focusNode,
                                  validator: widget.validator,
                                  controller: widget.controller,
                                  obscureText: widget.obscureText == null
                                      ? false
                                      : widget.obscureText,
                                  onFieldSubmitted: widget.onFieldSubmitted,
                                  onChanged: widget.onChanged,
                                  onEditingComplete: widget.onEditingComplete,
                                  onSaved: widget.onSaved,
                                  onTap: () => {
                                    widget.onTap,
                                    setState(() {
                                      borderColor = widget.borderColorFocus;
                                    })
                                  },
                                  keyboardType: widget.keyboardType,
                                  autovalidate: widget.autovalidate == null
                                      ? false
                                      : true,
                                  readOnly:
                                      widget.readonly == null ? false : true,
                                  style: widget.style,
                                  decoration: InputDecoration(
                                      suffixIcon: widget.suffixIcon,
                                      prefixIcon: widget.prefixIcon,
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(12),
                                      labelText: widget.placeholder),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
