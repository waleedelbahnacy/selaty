import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({
    super.key, required this.headline, required this.onTap, this.subHeadline = '',
  });
  final String headline;
  final String subHeadline;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            headline,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 6,),
          Text(
            subHeadline,
            style:TextStyle(
              fontSize: 12,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: const Text(
              ' ➤ مشاهدة الكل',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
