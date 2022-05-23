import 'package:flutter_web_dashboard/pages/news/news.dart';

const rootRoute = "/";

const overviewPageDisplayName = "Map";
const overviewPageRoute = "/Map";

const StationsPageDisplayName = "Stations";
const StationsPageRoute = "/Stations";

const driversPageDisplayName = "Drivers";
const driversPageRoute = "/drivers";

const fleetPageDisplayName = "Fleet";
const fleetPageRoute = "/Fleet";

const newsPageDisplayName = "News";
const newsPageRoute = "/News";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;
  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(StationsPageDisplayName, StationsPageRoute),
  MenuItem(driversPageDisplayName, driversPageRoute),
  MenuItem(fleetPageDisplayName, fleetPageRoute),
  MenuItem(newsPageDisplayName, newsPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
