import 'dart:async';
import 'dart:io';

import 'package:boilerplate/data/local/constants/db_constants.dart';
import 'package:boilerplate/utils/encryption/xxtea.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_web/sembast_web.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

abstract class LocalModule {
  /// A singleton preference provider.
  ///
  /// Calling it multiple times will return the same instance.
  static Future<SharedPreferences> provideSharedPreferences() {
    return SharedPreferences.getInstance();
  }

  /// A singleton database provider.
  ///
  /// Calling it multiple times will return the same instance.
  static Future<Database> provideDatabase() async {
    // Key for encryption
    var encryptionKey = "";

    // Get a platform-specific directory where persistent app data can be stored
    final appDocumentDir =
        kIsWeb ? Directory('/') : await getApplicationDocumentsDirectory();

    // Path with the form: /platform-specific-directory/demo.db
    final dbPath = join(appDocumentDir.path, DBConstants.DB_NAME);

    // Check to see if encryption is set, then provide codec
    // else init normal db with path
    var database;
    if (encryptionKey.isNotEmpty) {
      // Initialize the encryption codec with a user password
      var codec = getXXTeaCodec(password: encryptionKey);

      if (kIsWeb) {
        var factory = databaseFactoryWeb;
        database = await factory.openDatabase(dbPath, codec: codec);
      } else {
        database = await databaseFactoryIo.openDatabase(dbPath, codec: codec);
      }
    } else {
      if (kIsWeb) {
        var factory = databaseFactoryWeb;
        database = await factory.openDatabase(dbPath);
      } else {
        database = await databaseFactoryIo.openDatabase(dbPath);
      }
    }

    // Return database instance
    return database;
  }
}
