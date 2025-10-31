import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

class AmenitiesBottomSheet {
  static void show(
      BuildContext context, {
        required Set<String> selectedAmenities,
        required VoidCallback onUpdate,
      }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Amenities',
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.topCenter,
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.only(top: kToolbarHeight + 60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: StatefulBuilder(
                builder: (context, setModalState) => SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Amenities Grid
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        childAspectRatio: 2.2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          AmenityTile(
                            icon: Icons.wifi,
                            label: 'Free Wi-Fi',
                            isSelected: selectedAmenities.contains('Free Wi-Fi'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Free Wi-Fi');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.fitness_center,
                            label: 'Fitness Center',
                            isSelected: selectedAmenities.contains('Fitness Center'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Fitness Center');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.free_breakfast,
                            label: 'Free Breakfast',
                            isSelected: selectedAmenities.contains('Free Breakfast'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Free Breakfast');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.child_care,
                            label: 'Kid Friendly',
                            isSelected: selectedAmenities.contains('Kid Friendly'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Kid Friendly');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.local_parking,
                            label: 'Free Parking',
                            isSelected: selectedAmenities.contains('Free Parking'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Free Parking');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.pets,
                            label: 'Pet Friendly',
                            isSelected: selectedAmenities.contains('Pet Friendly'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Pet Friendly');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.ac_unit,
                            label: 'Air Conditioned',
                            isSelected: selectedAmenities.contains('Air Conditioned'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Air Conditioned');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.pool,
                            label: 'Pool',
                            isSelected: selectedAmenities.contains('Pool'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Pool');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.local_bar,
                            label: 'Bar',
                            isSelected: selectedAmenities.contains('Bar'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Bar');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.restaurant,
                            label: 'Restaurant',
                            isSelected: selectedAmenities.contains('Restaurant'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity(selectedAmenities, 'Restaurant');
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                setModalState(() {
                                  selectedAmenities.clear();
                                });
                                onUpdate();
                              },
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                side: BorderSide(color: AppColors.primary, width: 1.5),
                              ),
                              child: Text(
                                'Clear',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: AppColors.linerGradient2,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  onUpdate();
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0, -1),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
          )),
          child: child,
        );
      },
    );
  }

  static void _toggleAmenity(Set<String> selectedAmenities, String amenity) {
    if (selectedAmenities.contains(amenity)) {
      selectedAmenities.remove(amenity);
    } else {
      selectedAmenities.add(amenity);
    }
  }
}

class AmenityTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const AmenityTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.primary,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : AppColors.primary,
              size: 40,
            ),
            SizedBox(height: 4),
            Flexible(
              child: Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Colors.white : Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}