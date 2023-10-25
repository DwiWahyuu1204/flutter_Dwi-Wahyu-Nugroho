import 'package:flutter/material.dart';
import 'package:flutter_openai_demo/screens/result_screen.dart';
import 'package:flutter_openai_demo/service/recomendasi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _cameraController = TextEditingController();
  final TextEditingController _storageController = TextEditingController();
  bool isLoading = false;

  void _getRekom() async {
    setState(() {
      isLoading = true;
    });
    try {
      final result = await RecommendationService.getRecomendasi(
          price: _priceController.text,
          camera: _cameraController.text,
          storage: _storageController.text);
      if (mounted) {
        setState(() {
          isLoading = false;
        });
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ResultScreen(smartphoneRespone: result);
        }));
      }
    } catch (e) {
      const snackBar = SnackBar(content: Text('Tidak Ada rekomendasi'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smartphone Recomendasi'),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _priceController,
                ),
                TextFormField(
                  controller: _cameraController,
                ),
                TextFormField(
                  controller: _storageController,
                ),
                ElevatedButton(
                    onPressed: _getRekom, child: Text('get Rekomendasi'))
              ],
            )),
      ),
    );
  }
}
