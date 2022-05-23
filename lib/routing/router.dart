import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/clients/fleet.dart';
import 'package:flutter_web_dashboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dashboard/pages/news/news.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/pages/stations/stations.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverviewPage());
    case StationsPageRoute:
      return _getPageRoute(StationsPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case fleetPageRoute:
      return _getPageRoute(fleetPage());
    case newsPageRoute:
      return _getPageRoute(newspage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
