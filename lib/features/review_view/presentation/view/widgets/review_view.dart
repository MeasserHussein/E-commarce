import 'package:comamarce/core/widgets/text_form_field_widget.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/details_items.dart';
import 'package:flutter/material.dart';

import '../../../../../core/units/app_colors.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: const ReviewBody());
  }
}

class ReviewBody extends StatefulWidget {
  const ReviewBody({super.key});

  @override
  State<ReviewBody> createState() => _ReviewBodyState();
}

class _ReviewBodyState extends State<ReviewBody> {
  final scrollController = ScrollController();

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const Expanded(
              child: ReviewCommentListView(
            count: 20,
            physics: BouncingScrollPhysics(),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AppTextFormField(
              borderRadius: BorderRadius.circular(10),
               suffixIcon:  InkWell(
                 onTap: (){},
                   child:const Icon(Icons.send)),
                onChange: (data) {
                  // scrollController.animateTo(0,
                  //     duration: const Duration(microseconds: 1),
                  //     curve: Curves.fastOutSlowIn);
                  // controller.clear();
                },
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.text,
                controller: controller,
                hintText: 'add comment',
              hintColor: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
