import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import '../../../../../common/widgets/searchfield/searchField.dart';

class FindHotelScreen extends StatefulWidget {
  const FindHotelScreen({super.key});

  @override
  State<FindHotelScreen> createState() => _FindHotelScreenState();
}

class _FindHotelScreenState extends State<FindHotelScreen> {
  // Track selected amenities
  Set<String> selectedAmenities = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomSmallAppBar(
        title: 'Hotels',
        subtitle: 'Abidos Hotel Apartment',
        onLocationTap: () {},
      ),
      body: Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace / 1),
        child: Column(
          children: [
            CustomSearchField(
              hintText: 'Search',
              prefixIcon: Icons.search,
              onChanged: (query) {},
            ),
            SizedBox(height: 16),

            // Filter Row with Amenities, Filter by, and Sort by
            Row(
              children: [
                Expanded(
                  child: FilterButton(
                    label: 'Amenities',
                    icon: Icons.keyboard_arrow_down,
                    onTap: () => _showAmenitiesBottomSheet(context),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: FilterButton(
                    label: 'Filter by',
                    icon: Icons.keyboard_arrow_down,
                    onTap: () {
                      // Add your filter by logic here
                    },
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: FilterButton(
                    label: 'Sort by',
                    icon: Icons.keyboard_arrow_down,
                    onTap: () {
                      // Add your sort by logic here
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  void _showAmenitiesBottomSheet(BuildContext context) {
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
                                _toggleAmenity('Free Wi-Fi');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.fitness_center,
                            label: 'Fitness Center',
                            isSelected: selectedAmenities.contains('Fitness Center'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Fitness Center');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.free_breakfast,
                            label: 'Free Breakfast',
                            isSelected: selectedAmenities.contains('Free Breakfast'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Free Breakfast');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.child_care,
                            label: 'Kid Friendly',
                            isSelected: selectedAmenities.contains('Kid Friendly'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Kid Friendly');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.local_parking,
                            label: 'Free Parking',
                            isSelected: selectedAmenities.contains('Free Parking'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Free Parking');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.pets,
                            label: 'Pet Friendly',
                            isSelected: selectedAmenities.contains('Pet Friendly'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Pet Friendly');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.ac_unit,
                            label: 'Air Conditioned',
                            isSelected: selectedAmenities.contains('Air Conditioned'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Air Conditioned');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.pool,
                            label: 'Pool',
                            isSelected: selectedAmenities.contains('Pool'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Pool');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.local_bar,
                            label: 'Bar',
                            isSelected: selectedAmenities.contains('Bar'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Bar');
                              });
                            },
                          ),
                          AmenityTile(
                            icon: Icons.restaurant,
                            label: 'Restaurant',
                            isSelected: selectedAmenities.contains('Restaurant'),
                            onTap: () {
                              setModalState(() {
                                _toggleAmenity('Restaurant');
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // Clear and Apply Buttons
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                setModalState(() {
                                  selectedAmenities.clear();
                                });
                                setState(() {});
                              },
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                side: BorderSide(color: Colors.blue, width: 1.5),
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
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  backgroundColor: Colors.transparent,
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

  void _toggleAmenity(String amenity) {
    if (selectedAmenities.contains(amenity)) {
      selectedAmenities.remove(amenity);
    } else {
      selectedAmenities.add(amenity);
    }
  }
}

// Reusable Filter Button Widget
class FilterButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const FilterButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 4),
            Icon(icon, size: 18),
          ],
        ),
      ),
    );
  }
}

// Reusable Amenity Tile Widget
class AmenityTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const AmenityTile({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.blue : AppColors.primary,
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
              color: isSelected ? Colors.white : Colors.blue,
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