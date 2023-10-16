import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_flutter/view-models/provider/dicebear-viewModel/dicebear_viewModel.dart';
import 'package:provider/provider.dart';

class DicebearScreen extends StatelessWidget {
  const DicebearScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DiceBear Screen"),
      ),
      body: Consumer<DicebearViewModel>(
        builder: (context, DicebearViewModel, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DicebearViewModel.isloading
                    ? const CircularProgressIndicator()
                    : DicebearViewModel.imageData.isEmpty
                        ? const Icon(
                            Icons.image,
                            size: 50,
                          )
                        : SvgPicture.string(
                            DicebearViewModel.imageData,
                            height: 60,
                            width: 60,
                          ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: DicebearViewModel.dicebearController,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      DicebearViewModel.getDicebear();
                    },
                    child: const Text('Generate Image'))
              ],
            ),
          );
        },
      ),
    );
  }
}
