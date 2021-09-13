import 'package:flutter/material.dart';

class WidgetsAppWidgetDetails extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('WidgetsApp Widget'),
      ),
      body: WidgetLists(),
    );
  }
}

class WidgetLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text: "A convenience widget that wraps a number of widgets that are commonly required for an application.\n\nOne of the primary roles that WidgetsApp provides is binding the system back button to popping the Navigator or quitting the application.\n\nIt is used by both MaterialApp and CupertinoApp to implement base functionality for an app.\n\n",
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(text: 'Constructors\n\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextSpan(text: 'Key? key,\nGlobalKey<NavigatorState>? navigatorKey,\nRouteFactory? onGenerateRoute,\nInitialRouteListFactory? onGenerateInitialRoutes,\nRouteFactory? onUnknownRoute,\nList<NavigatorObserver> navigatorObservers,\nString? initialRoute,\nPageRouteFactory? pageRouteBuilder,\nWidget? home,\nMap<String, WidgetBuilder> routes,\nTransitionBuilder? builder,\nString title,\nGenerateAppTitle? onGenerateTitle,\nTextStyle? textStyle,\nrequired Color color,\nLocale? locale,\nIterable<LocalizationsDelegate>? localizationsDelegates,\nLocaleListResolutionCallback? localeListResolutionCallback,\nLocaleResolutionCallback? localeResolutionCallback,\nIterable<Locale> supportedLocales,\nbool showPerformanceOverlay,\nbool checkerboardRasterCacheImages,\nbool checkerboardOffscreenLayers,\nbool showSemanticsDebugger,\nbool debugShowWidgetInspector,\nbool debugShowCheckedModeBanner,\nInspectorSelectButtonBuilder? inspectorSelectButtonBuilder,\nMap<LogicalKeySet, Intent>? shortcuts,\nMap<Type, Action<Intent>>? actions,\nString? restorationScopeId',style: TextStyle(fontSize: 16,),),
            ],
          ),
        ),
      ),
    );
  }
}

