import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  void _showSuccessMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 6,
        titleSpacing: 20,
        title: Image.asset(
          'assets/logo.png',
          width: 100,
          height: 30,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Color(0xFFA67C52)),
            onPressed: () => _showSuccessMessage("Menu clicked"),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            height: 56,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.08),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () => _showSuccessMessage("Back clicked"),
                  child: const Icon(Icons.arrow_back, color: Colors.black54),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Coupons',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildCouponCard(
                    amount: "₹6,900",
                    title: "LONGSTAY",
                    description:
                    "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
                  ),

                  const SizedBox(height: 16),

                  _buildCouponCard(
                    amount: "₹6,900",
                    title: "LONGSTAY",
                    description:
                    "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
                  ),

                  const SizedBox(height: 24),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Payment offers:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  _buildCouponCard(
                    amount: "₹6,900",
                    title: "LONGSTAY",
                    description:
                    "15% off when you book for 5 days or more and 20% off when you book for 30 days or more.",
                  ),

                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),

          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildCouponCard({
    required String amount,
    required String title,
    required String description,
  }) {
    return Row(
      children: [
        Container(
          width: 68,
          padding: const EdgeInsets.symmetric(vertical: 52),
          decoration: const BoxDecoration(
            color: Color(0xFFC06C42),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  amount,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Dotted line
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: CustomPaint(
                  size: const Size(1, double.infinity),
                  painter: DottedLinePainter(),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color(0xFFFDF8F5),
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 2,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title + Apply
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          _showSuccessMessage("Coupon Applied!"),
                      child: Row(
                        children: const [
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.local_offer_outlined,
                              size: 16,
                              color: Color(0xFFC06C42),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Apply",
                            style: TextStyle(
                              color: Color(0xFFC06C42),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),

                const Divider(color: Colors.black12),

                const Spacer(),

                InkWell(
                  onTap: () => _showSuccessMessage("Read more clicked"),
                  child: Text(
                    "Read more",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomBar() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            padding:
            const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            color: const Color(0xFF2E6C38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/Vector.svg", color: Colors.white),
                const SizedBox(width: 8),
                const Text(
                  "Book now & Unlock exclusive rewards!",
                  style:
                  TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "₹19,500",
                          style: TextStyle(
                            decoration:
                            TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "₹16,000",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "for 2 nights",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    Row(
                      children: [
                        Text(
                          "24 Apr - 26 Apr | 8 guests",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            decoration:
                            TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SvgPicture.asset("assets/edit_square.svg"),
                      ],
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () =>
                      _showSuccessMessage("Reserved!"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color(0xFFC06C42),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text("Reserve"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xFFFDF8F5)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    var dashHeight = 5;
    var dashSpace = 5;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(
          Offset(0, startY),
          Offset(0, startY + dashHeight),
          paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
