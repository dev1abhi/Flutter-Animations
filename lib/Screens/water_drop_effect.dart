import 'package:flutter/material.dart';

class WaterDropEffect extends StatelessWidget {
  const WaterDropEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Water Drop Effect",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // Custom Neumorphic Container
            Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                alignment: Alignment.center,
                child: Container(
                  height: 150,
                  width: 150,
                  foregroundDecoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.white
                    backgroundBlendMode: BlendMode.overlay,
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                    ),
                  ),
                ),
              ),
            ),
            // END
            const Spacer(),
            // Custom Neumorphic Container button
            Center(
              child: Container(
                height: 165,
                width: 165,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                alignment: Alignment.center,
                child: Container(
                  height: 150,
                  width: 150,
                  foregroundDecoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.white
                    backgroundBlendMode: BlendMode.overlay,
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                    ),
                  ),
                ),
              ),
            ),
            // END
            const Spacer(),
            // Custom Water drop
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                    alignment: Alignment.center,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 5,
                          offset: const Offset(5, 6),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 25),
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 5,
                              offset: const Offset(5, 6),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        foregroundDecoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.white
                          backgroundBlendMode: BlendMode.overlay,
                          gradient: LinearGradient(
                            colors: [Colors.black, Colors.white],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // END
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
