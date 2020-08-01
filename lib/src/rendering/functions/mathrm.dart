import 'dart:math';
import 'dart:ui';

import 'package:catex/src/lookup/context.dart';
import 'package:catex/src/lookup/modes.dart';
import 'package:catex/src/lookup/symbols.dart';
import 'package:catex/src/parsing/functions/frac.dart';
import 'package:catex/src/rendering/character.dart';
import 'package:catex/src/rendering/rendering.dart';
import 'package:flutter/rendering.dart';

/// [RenderNode] for [FracNode].
class RenderMathRm extends RenderNode with SingleChildRenderNodeMixin {
  /// Constructs a [RenderFrac] given a [context].
  RenderMathRm(CaTeXContext context) : super(context);

  /// Arranges the children in a column and centers them horizontally.
  @override
  void configure() {
    final childSize = sizeChildNode(child); //get dimension of input

    // child.positionNode(Offset(surdSize.width, height - childSize.height));
    renderSize = Size(childSize.width, childSize.height);
  }

  @override
  void render(Canvas canvas) {
    paintChildNode(child); // if the input is //mathrm{cm^2}
  }
}
