//  Copyright (c) 2016, 2017, 2018,
//  Poplar Hill Informatics and the American College of Radiology
//  All rights reserved.
//  Use of this source code is governed by the open source license
//  that can be found in the odw/LICENSE file.
//  Primary Author: Jim Philbin <jfphilbin@gmail.edu>
//  See the AUTHORS file for other contributors.
//
import 'dart:typed_data';

/*
import 'package:core/src/utils/bytes/bytes.dart';

export 'package:core/src/utils/character/ascii.dart';
export 'package:core/src/utils/dicom.dart';
export 'package:core/src/error.dart';
export 'package:core/src/error/issues/issues.dart';
export 'package:core/src/utils/string/hexadecimal.dart';
export 'package:core/src/vr/vr_base.dart';
*/

// ignore_for_file: public_member_api_docs

// **** This file contains low-level [String] functions

bool inRange(int v, int min, int max) => v >= min && v <= max;

bool notInRange(int n, int min, int max) => !inRange(n, min, max);

/// Checks that vfLength (vfl) is in range and the right size, based on the
/// element size (eSize).
bool isValidLength(int length, int max, {bool onError(int length, int max)}) {
  if (length >= 0 && length <= max) return true;
  return onError(length, max);
}