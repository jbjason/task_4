// ignore_for_file: use_build_context_synchronously
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:task_4/core/error/api_exception.dart';
import 'package:task_4/core/network/mynetwork.dart';
import 'package:task_4/core/util/mydialog.dart';
import 'package:task_4/core/util/mystring.dart';

class BaseClientClass2 {
  static final dio = Dio();

  static Future<dynamic> getData({
    required String path,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      Logger().i("${MyNetwork.url}/$path");
      final response = await dio.get(
        "${MyNetwork.url}/$path",
        queryParameters: parameters,
        data: body,
        options: options ?? Options(headers: {'accept': 'text/plain'}),
      );
      Logger().t(response.data);
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      Logger().e(e);
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
          title: "Unexpected Error!", msg: e.toString(), context: ctx);
    }
  }

  static Future<dynamic> postData({
    String url = MyNetwork.url,
    required String path,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      Logger().i("$url/$path\n$body");
      final response = await dio.post(
        "$url/$path",
        queryParameters: parameters,
        data: body,
        options: options ??
            Options(
              headers: {
                'Content-Type': 'application/json',
                'accept': 'text/plain'
              },
            ),
      );
      Logger().t(response.data);
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      Logger().e(e);
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
          title: "Unexpected Error!", msg: e.toString(), context: ctx);
    }
  }

  static Future<dynamic> patchData({
    String url = MyNetwork.url,
    required String path,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      Logger().i("$url/$path");
      final response = await dio.patch(
        "$url/$path",
        queryParameters: parameters,
        data: body,
        options: options ??
            Options(
              headers: {
                'Content-Type': 'application/json',
                'accept': 'text/plain'
              },
            ),
      );
      Logger().t(response.data);
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      Logger().e(e);
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
          title: "Unexpected Error!", msg: e.toString(), context: ctx);
    }
  }

  static Future<dynamic> putData({
    required String path,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      Logger().i("${MyNetwork.url}/$path");
      final response = await dio.put(
        "${MyNetwork.url}/$path",
        queryParameters: parameters,
        data: body,
        options: options ?? Options(headers: {'accept': 'text/plain'}),
      );
      Logger().t(response.data);
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      Logger().e(e);
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
          title: "Unexpected Error!", msg: e.toString(), context: ctx);
    }
  }

  static Future<dynamic> deleteData({
    required String path,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      Logger().i("${MyNetwork.url}/$path");
      final response = await dio.delete(
        "${MyNetwork.url}/$path",
        queryParameters: parameters,
        data: body,
        options: options ?? Options(headers: {'accept': 'text/plain'}),
      );
      Logger().t(response.data);
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      Logger().e(e);
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
          title: "Unexpected Error!", msg: e.toString(), context: ctx);
    }
  }
}
