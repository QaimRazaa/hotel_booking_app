import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

import '../../../../../viewmodel/foodmenu/food_item_provider.dart';

class FoodItemCard extends StatefulWidget {
  final String itemId;
  final String imageUrl;
  final String title;
  final int price;

  const FoodItemCard({
    super.key,
    required this.itemId,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  State<FoodItemCard> createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FoodItemProvider>(context);
    final quantity = provider.getQuantity(widget.itemId);

    return Container(
      width: AppSizes.width(90),
      margin: EdgeInsets.symmetric(vertical: AppSizes.height(1)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.width(2)),
        child: Row(
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radius(3)),
              child: Image.asset(
                widget.imageUrl,
                width: AppSizes.width(25),
                height: AppSizes.height(12),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: AppSizes.width(25),
                    height: AppSizes.height(12),
                    color: Colors.grey[300],
                    child: const Icon(Icons.image, size: 40),
                  );
                },
              ),
            ),
            SizedBox(width: AppSizes.width(3)),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.roboto(
                      fontSize: AppSizes.font(1.8),
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(height: AppSizes.height(0.5)),
                  Text(
                    "\$${widget.price}",
                    style: GoogleFonts.roboto(
                      fontSize: AppSizes.font(2),
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(height: AppSizes.height(1)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => provider.decrementQuantity(widget.itemId),
                        child: Container(
                          height: AppSizes.height(3.5),
                          width: AppSizes.height(3.5),
                          decoration: BoxDecoration(
                            gradient: AppColors.linerGradient3,
                            borderRadius: BorderRadius.circular(AppSizes.radius(1.5)),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: AppSizes.icon(2),
                          ),
                        ),
                      ),
                      SizedBox(width: AppSizes.width(3)),

                      // Quantity number
                      Text(
                        quantity.toString(),
                        style: GoogleFonts.roboto(
                          fontSize: AppSizes.font(1.8),
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      SizedBox(width: AppSizes.width(3)),

                      // Plus button
                      GestureDetector(
                        onTap: () => provider.incrementQuantity(widget.itemId),
                        child: Container(
                          height: AppSizes.height(3.5),
                          width: AppSizes.height(3.5),
                          decoration: BoxDecoration(
                            gradient: AppColors.linerGradient3,
                            borderRadius: BorderRadius.circular(AppSizes.radius(1.5)),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: AppSizes.icon(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}