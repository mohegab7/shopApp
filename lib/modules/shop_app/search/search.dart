import 'package:flutter/material.dart';

import 'package:flutter_application_1/shared/components/components.dart';

class ShopSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    var seacrchcontroller = TextEditingController();
    // return BlocProvider(
    // create: (context) => SearchCuibt(),
    // child: BlocConsumer<SearchCuibt, SearchStates>(
    // builder: (context, state) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              defaultFormField(
                type: TextInputType.text,
                controller: seacrchcontroller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Search is empty';
                  }
                  return null;
                },
                onSubmit: (String text) {
                  // SearchCuibt.get(context).search(text);
                },
                prefix: Icons.search,
                label: 'Search',
              ),
              SizedBox(
                height: 10,
              ),
              // if (state is SearchloadingState) LinearProgressIndicator(),
            ],
          ),
        ),
      ),
    );
    // },
    // listener: (context, state) {}),
    // );
  }
}
