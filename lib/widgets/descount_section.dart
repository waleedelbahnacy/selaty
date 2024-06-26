import 'package:flutter/material.dart';
import 'package:selaty/models/discount_model.dart';



class DescountSection extends StatelessWidget {
  const DescountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DiscountItem(index: 0),
              DiscountItem(index: 1),
              DiscountItem(index: 2),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height:MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color: Color(0xffEB971B),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'اشتري 1 واحصل على 1',
                      style:  TextStyle(
    fontSize: 18,
    color: Colors.white,
  ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'مجانا',
                      style:  TextStyle(
      fontSize: 28, 
      fontWeight: FontWeight.bold,
       color: Colors.white)
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height:MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color:Color(0xff859D3F),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'اقل',
                      style:  TextStyle(
      fontSize: 28,
       fontWeight: FontWeight.normal,
        color: Colors.white,
        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'SAR',
                          style:  TextStyle(
      fontSize: 28, 
      fontWeight: FontWeight.normal,
       color: Colors.white,
       ),
                        ),Text(
                          textAlign: TextAlign.center,
                          '99 ',
                          style: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height:MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color:Color(0xff24B4AA),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'اختيارات الشهــر',
                      style:  TextStyle(
      fontSize: 28,
       fontWeight: FontWeight.normal,
        color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class DiscountItem extends StatelessWidget {
   DiscountItem({
    super.key, required this.index,
  });
  final int index;

  final List<DiscountModel> discountList = [
    DiscountModel(Color(0xff736C8B), discount: '30%'),
    DiscountModel(Color(0xff35A2FF), discount: '40%'),
    DiscountModel(Color(0xffEF3F4C), discount: '50%'),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.3,
      height:MediaQuery.sizeOf(context).width * 0.3,
      decoration: BoxDecoration(
        color:discountList[index].color ,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            'عرض',
            style:TextStyle(
    fontSize: 16,
    color: Colors.white,
  ),
          ),
          Text(
            discountList[index].discount,
            style:TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
          ),
           Text(
            'خصم',
            style: TextStyle(
    fontSize: 16,
    color: Colors.white,
  ),
          ),
        ],
      ),
    );
  }
}



