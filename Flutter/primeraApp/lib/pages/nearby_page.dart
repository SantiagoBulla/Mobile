import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:primera_app/components/toolbar.dart';
import 'package:primera_app/config/app_icons.dart';
import 'package:primera_app/config/app_strings.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(4.598259621330395, -74.07609714839201),
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            // Plenty of other options available!
          ),
          MarkerLayer(markers: [
            Marker(
              width: 100,
              height: 80,
              point: LatLng(4.598259621330395, -74.07609714839201),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Text(
                    'Username',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.icLocation,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                )
              ]),
            ),
          ])
        ],
      ),
    );
  }
}
