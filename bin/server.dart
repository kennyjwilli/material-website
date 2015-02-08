import "dart.io";

import 'package:redstone/server.dart' as app;
import 'package:di/di.dart';
import 'package:shelf_static/shelf_static.dart';
import "package:redstone_mapper/plugin.dart";
import "package:redstone_mapper_mongo/manager.dart";
import "package:args/args.dart";

import '../lib/database.dart';
import '../lib/authorization.dart';

main()
{
  app.setupConsoleLog();

  var port = _getConfig("PORT", "8080");
  var dbUrl = _getConfig("MONGOHQ_URL", "mongodb://localhost/contacts");
  var web = _getConfig("WEB_FOLDER", "web");
  var supportDartium = _getConfig("SUPPORT_DARTIUM", "false");

  app.setShelfHandler(createStaticHandler("web",
                                          defaultDocument: "index.html",
                                          serveFilesOutsidePath: true));

 var dbUri = "mongodb://localhost/auth_example";
  var poolSize = 3;

  app.addModule(new Module()
      ..bind(MongoDbPool, toValue: new MongoDbPool(dbUri, poolSize)));

  app.addPlugin(AuthorizationPlugin);

  app.start();
}


