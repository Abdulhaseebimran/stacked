import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/home_viewmodel.dart';

// View
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
    
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: Text("Tasbeeh"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${viewModel.count}",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: viewModel.addcounter, child: Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
