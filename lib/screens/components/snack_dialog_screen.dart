// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackNDialogScreen extends StatelessWidget {
  const SnackNDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snack and Dialog Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title('SnackBar'),
            SizedBox(height: 10),
            basicSnackBar(context),
            actionSnackBar(context),
            floatingSnackBar(context),
            materialBannerSnackBar(context),
            SizedBox(height: 10),
            title('Dialog'),
            SizedBox(height: 10),
            alertDialogButton(context),
            simpleDialogButton(context),
            aboutDialogButton(context),
            customDialogButton(context),
            modalBottomSheetButton(context),
            persistentBottomSheetButton(context),
            datePickerButton(context),
            timePickerButton(context),
            cupertinoAlertButton(context),
            fullScreenDialogButton(context),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Text title(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
    );
  }

  // แสดงข้อความสั้น ๆ พร้อมปุ่มปิดอัตโนมัติ
  Widget basicSnackBar(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Basic SnackBar'),
            duration: const Duration(seconds: 2),
          ),
        );
      },
      child: Text('basic SnackBar'),
    );
  }

  // มีปุ่มให้ผู้ใช้กดทำงานต่อ (เช่น “UNDO”, “RETRY”)
  Widget actionSnackBar(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Action Undo SnackBar'),
            duration: const Duration(seconds: 2),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Do something to undo the change.
              },
            ),
          ),
        );
      },
      child: Text('action SnackBar'),
    );
  }

  // ลอยเหนือเนื้อหา (ไม่ติดกับ bottom)
  Widget floatingSnackBar(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Floating SnackBar'),
            duration: const Duration(seconds: 2),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Do something to undo the change.
              },
            ),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      child: Text('floating SnackBar'),
    );
  }

  // ลอยเหนือเนื้อหา (ไม่ติดกับ bottom)
  Widget materialBannerSnackBar(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            content: Text('This is a Material Banner'),
            leading: Icon(Icons.info),
            actions: [
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                },
                child: Text('Dismiss'),
              ),
            ],
          ),
        );
      },
      child: Text('material Banner SnackBar'),
    );
  }

  /// 1. AlertDialog Button
  Widget alertDialogButton(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => showDialog(
            context: context,
            builder:
                (_) => AlertDialog(
                  title: const Text('Alert'),
                  content: const Text('This is an AlertDialog.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('CANCEL'),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'),
                    ),
                  ],
                ),
          ),
      child: const Text('Show AlertDialog'),
    );
  }

  /// 2. SimpleDialog Button
  Widget simpleDialogButton(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => showDialog(
            context: context,
            builder:
                (_) => SimpleDialog(
                  title: const Text('Choose an option'),
                  children: [
                    SimpleDialogOption(
                      onPressed: () => Navigator.pop(context, 'A'),
                      child: const Text('Option A'),
                    ),
                    SimpleDialogOption(
                      onPressed: () => Navigator.pop(context, 'B'),
                      child: const Text('Option B'),
                    ),
                  ],
                ),
          ),
      child: const Text('Show SimpleDialog'),
    );
  }

  /// 3. AboutDialog Button
  Widget aboutDialogButton(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => showAboutDialog(
            context: context,
            applicationName: 'MyApp',
            applicationVersion: 'v1.0.0',
            applicationLegalese: '© 2025 My Company',
          ),
      child: const Text('Show AboutDialog'),
    );
  }

  /// 4. Custom Dialog Button
  Widget customDialogButton(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => showDialog(
            context: context,
            builder:
                (_) => Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Custom Dialog',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 12),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter something',
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('SUBMIT'),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
      child: const Text('Show Custom Dialog'),
    );
  }

  /// 5. Modal Bottom Sheet Button
  Widget modalBottomSheetButton(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => showModalBottomSheet(
            context: context,
            builder:
                (_) => SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text('Share'),
                        leading: const Icon(Icons.share),
                      ),
                      ListTile(
                        title: const Text('Settings'),
                        leading: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                ),
          ),
      child: const Text('Show Modal Bottom Sheet'),
    );
  }

  /// 6. Persistent Bottom Sheet Button
  Widget persistentBottomSheetButton(BuildContext context) {
    return Builder(
      builder: (ctx) {
        return ElevatedButton(
          onPressed: () {
            Scaffold.of(ctx).showBottomSheet(
              (innerCtx) => Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const Expanded(child: Text('This is a persistent sheet')),
                    TextButton(
                      onPressed: () => Navigator.pop(innerCtx),
                      child: const Text('CLOSE'),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text('Show Persistent Bottom Sheet'),
        );
      },
    );
  }

  /// 7. Date Picker Button
  Widget datePickerButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
        // handle selected date if needed
      },
      child: const Text('Show Date Picker'),
    );
  }

  /// 8. Time Picker Button
  Widget timePickerButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final time = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        // handle selected time if needed
      },
      child: const Text('Show Time Picker'),
    );
  }

  /// 9. Cupertino AlertDialog Button
  Widget cupertinoAlertButton(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => showCupertinoDialog(
            context: context,
            builder:
                (_) => CupertinoAlertDialog(
                  title: const Text('iOS Alert'),
                  content: const Text('This is a CupertinoAlertDialog.'),
                  actions: [
                    CupertinoDialogAction(
                      child: const Text('Cancel'),
                      onPressed: () => Navigator.pop(context),
                    ),
                    CupertinoDialogAction(
                      child: const Text('OK'),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
          ),
      child: const Text('Show Cupertino Alert'),
    );
  }

  /// 10. Full-screen Dialog Button
  Widget fullScreenDialogButton(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => Navigator.of(context).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder:
                  (_) => Scaffold(
                    appBar: AppBar(title: const Text('Full-screen Dialog')),
                    body: const Center(
                      child: Text('This is a full-screen dialog page.'),
                    ),
                  ),
            ),
          ),
      child: const Text('Show Full-screen Dialog'),
    );
  }
}
