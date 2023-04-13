import 'package:flutter/material.dart';
import 'package:notortalamauygulamasi/constants/app_constans.dart';
import 'package:notortalamauygulamasi/helper/data_helper.dart';

class KrediDropDownWidget extends StatefulWidget {
  final Function onKrediSecildi;
  const KrediDropDownWidget({required this.onKrediSecildi, super.key});

  @override
  State<KrediDropDownWidget> createState() => _KrediDropDownWidgetState();
}

class _KrediDropDownWidgetState extends State<KrediDropDownWidget> {
  @override
  Widget build(BuildContext context) {
    double secilenKrediDegeri = 1;
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        iconEnabledColor: Sabitler.anaRenk.shade200,
        value: secilenKrediDegeri,
        underline: Container(),
        items: DataHelper.tumDerslerinKredileri(),
        onChanged: (deger) {
          setState(() {
            secilenKrediDegeri = deger!;
            widget.onKrediSecildi(deger);
          });
        },
      ),
    );
  }
}
