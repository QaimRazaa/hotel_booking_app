import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/small_elevated_button.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

class HotelCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final int reviewCount;
  final String description;
  final String discount;
  final int price;
  final VoidCallback onBookPressed;

  const HotelCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.reviewCount,
    required this.description,
    required this.discount,
    required this.price,
    required this.onBookPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        margin:  EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageUrl,
                  width: 90,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 90,
                      height: 110,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image, size: 40),
                    );
                  },
                ),
              ),

              // 📄 Info section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),

                      // Rating
                      Row(
                        children: [
                          const Icon(Icons.star, size: 16, color: Colors.orange),
                          const SizedBox(width: 4),
                          Text(
                            rating.toString(),
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: AppColors.grey,
                            ),
                          ),
                          SizedBox(width: Sizes.size15),
                          Text(
                            'Reviews ($reviewCount)',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),

                      Text(
                        description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: 8),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                discount,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.orange,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '\$$price',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          SmallElevatedButton(
                            text: "Book Now",
                            onPressed: onBookPressed,
                            gradient: AppColors.linerGradient3,
                            width: 95,
                            height: 32,
                            borderRadius: 10,
                            textStyle: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}