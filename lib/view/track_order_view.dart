import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({Key? key}) : super(key: key);
  static const String id = 'TrackOrderView';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'ترتيب المسار',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 20
                      : MediaQuery.sizeOf(context).width / 4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: Color(0xff2AC17E),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'معرف الطلب : ',
                                  style: TextStyle(
                              fontSize: 18,
                            fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '#OD2204',
                                  style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'تاريخ النشر 26 كانون الثاني (يناير) 2021',
                              style: TextStyle(
      fontSize: 12,
      color: Colors.white,
        ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  'البنود : ',
                                  style: TextStyle(
      fontSize: 12,
      color: Colors.white,
        )
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
      fontSize: 12,
      color: Colors.white,
        ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'الاجمالي : ',
                                  style:TextStyle(
      fontSize: 12,
      color: Colors.white,
        )
                                ),
                                Text(
                                  '100 ريال',
                                  style: TextStyle(
      fontSize: 12,
      color: Colors.white,
        )
                                ),
                              ],
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Icon(
                            Icons.free_breakfast_outlined,
                            size: 50,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.sizeOf(context).width
                          : MediaQuery.sizeOf(context).width * 0.5,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        TrackOrderListItem(
                            text: 'تم الطلب', icon: Icons.list_alt_outlined),
                        TrackOrderListItem(text: 'Order', icon: Icons.list),
                        TrackOrderListItem(text: 'تم شحن الطب', icon: Icons.list),
                        TrackOrderListItem(text: 'خارج الخدمة', icon: Icons.list),
                        TrackOrderListItem(
                            text: 'اجل تسليم', icon: Icons.check_circle_sharp),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TrackOrderListItem extends StatefulWidget {
  const TrackOrderListItem({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final IconData icon;

  @override
  State<TrackOrderListItem> createState() => _TrackOrderListItemState();
}

class _TrackOrderListItemState extends State<TrackOrderListItem> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isClicked
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isClicked = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.text,
                          style:  TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color(0xff2AC17E),
  ),
                        ),
                        // Text(
                        //   DateFormat.yMMMd().format(DateTime.now()).toString(),
                        //   // textDirection: TextDirection.ltr,
                        //   style: Styles.textStyle16Bold.copyWith(
                        //     color: Colors.black54,
                        //   ),
                        // ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff2AC17E).withOpacity(0.4),
                      radius: 30,
                      child: Icon(
                        widget.icon,
                        color: Color(0xff2AC17E),
                        size: 30,
                      ),
                    )
                  ],
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    isClicked = true;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.text,
                          style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
                        ),
                        Text(
                          'قيد الانتظار',
                          // textDirection: TextDirection.ltr,
                          style:
                              TextStyle(
    fontSize: 16,
    color: Colors.grey,
  )
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      radius: 30,
                      child: Icon(
                        widget.icon,
                        color: Colors.grey,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
        Row(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                width: 3, // Width of the vertical divider
                height: 30, // Height of the vertical divider
                color: isClicked
                    ? Color(0xff2AC17E)
                    : Colors.grey, // Color of the vertical divider
              ),
            ),
          ],
        ),
      ],
    );
  }
}
