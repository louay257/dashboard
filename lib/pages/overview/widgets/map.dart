import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../helpers/reponsiveness.dart';

class Mapview extends StatefulWidget {
  Mapview({Key key}) : super(key: key);

  @override
  State<Mapview> createState() => _MapviewState();
}

class _MapviewState extends State<Mapview> {
  MapController mp;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.82
            : MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(36.8065, 10.1815),
              zoom: 12.0,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://api.mapbox.com/styles/v1/louayghazouani1/cl0i6ucs0004h14qkswyf6iwj/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibG91YXlnaGF6b3VhbmkxIiwiYSI6ImNsMGI3dmFoZzB1ZzUzYm55OXRpNzRxdXIifQ.1tbkaD7IYusmGfcu29dA-A",
                additionalOptions: {
                  'accessToken':
                      'pk.eyJ1IjoibG91YXlnaGF6b3VhbmkxIiwiYSI6ImNsMGI3dmFoZzB1ZzUzYm55OXRpNzRxdXIifQ.1tbkaD7IYusmGfcu29dA-A',
                  'id': 'mapbox.mapbox-streets-v8',
                },
              ),
            ],
          ),
          Positioned(
              bottom: 80,
              right: 10,
              child: FloatingActionButton(
                heroTag: 'zoomin',
                child: Icon(Icons.zoom_in),
                onPressed: () {},
              )),
          Positioned(
              bottom: 20,
              right: 10,
              child: FloatingActionButton(
                heroTag: 'zoomout',
                child: Icon(Icons.zoom_out),
                onPressed: () {},
              )),
        ]));
  }
}
