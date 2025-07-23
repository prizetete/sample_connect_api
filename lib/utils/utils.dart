import 'dart:math';
import 'dart:ui';

/// คืนค่า [Color] สุ่มแบบเต็ม 0x000000–0xFFFFFF พร้อม opacity เท่ากับ 1.0
Color getRandomColor() {
  final Random random = Random();
  // สุ่มค่าสี hex ระหว่าง 0x000000–0xFFFFFF แล้วใส่ alpha FF
  return Color(0xFF000000 + random.nextInt(0x00FFFFFF));
}
