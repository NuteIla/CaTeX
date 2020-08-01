import 'package:catex/src/lookup/context.dart';
import 'package:catex/src/lookup/functions.dart';
import 'package:catex/src/parsing/parsing.dart';
import 'package:catex/src/rendering/functions/mathrm.dart';
import 'package:catex/src/widgets.dart';

// ignore: public_member_api_docs
class MathRmNode extends SingleChildNode with FunctionNode {
  MathRmNode(ParsingContext context) : super(context);

  @override
  FunctionProperties get properties =>
      const FunctionProperties(arguments: 1, greediness: 1);

  @override
  NodeWidget<RenderMathRm> configureWidget(CaTeXContext context) {
    super.configureWidget(context);

    final childContext = context.copyWith(
      // todo: properly determine size reduction
      // (some systems are already partially setup but unsupported).
      textSize: context.textSize * .78,
    );

    return NodeWidget(
      context,
      createRenderNode,
      children: [
        child.createWidget(childContext),
      ],
    );
  }

  @override
  RenderMathRm createRenderNode(CaTeXContext context) {
    return RenderMathRm(context);
  }
}
