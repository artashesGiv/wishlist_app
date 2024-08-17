import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:wishlist/repositories/repositories.dart';

class EditorForm extends StatelessWidget {
  const EditorForm({super.key, this.wish});

  final Wish? wish;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      body: FormBuilder(
        key: formKey,
        child: Column(
          children: [
            FormBuilderTextField(
              // key: _emailFieldKey,
              name: 'title',
              initialValue: wish?.title,
              decoration: const InputDecoration(labelText: 'Что вы хотите?'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(5),
              ]),
            ),
            FormBuilderTextField(
              // key: _emailFieldKey,
              name: 'link',
              initialValue: wish?.link,
              decoration: const InputDecoration(labelText: 'Ссылка'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.url(),
              ]),
            ),
            FormBuilderTextField(
              // key: _emailFieldKey,
              name: 'description',
              initialValue: wish?.description,
              minLines: 3,
              maxLines: 5,
              decoration: const InputDecoration(labelText: 'Описание'),
            ),
            FormBuilderTextField(
              // key: _emailFieldKey,
              name: 'price',
              initialValue: wish?.price.toString(),
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Ориентировачная стоимость'),
            ),
          ],
        ),
      ),
    );
  }
}
