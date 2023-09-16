import 'package:amazon/common/widgets/loader.dart';
import 'package:amazon/constants/global_variable.dart';
import 'package:amazon/features/home/services/home_services.dart';
import 'package:amazon/models/product.dart';
import 'package:flutter/material.dart';

class CategoriesDealScreen extends StatefulWidget {
  static const String routeName = "/category-deals";
  final String category;
  const CategoriesDealScreen({super.key, required this.category});

  @override
  State<CategoriesDealScreen> createState() => _CategoriesDealScreenState();
}

class _CategoriesDealScreenState extends State<CategoriesDealScreen> {
  HomeServices homeServices = HomeServices();
  List<Product>? categoryProducts = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchCategoryProduct();
  }

  fetchCategoryProduct() async {
    categoryProducts = await homeServices.fetchCategoryProduct(
        context: context, category: widget.category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: GlobalVariables.appBarGradient),
          ),
          title: Text(
            widget.category,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: categoryProducts == null
          ? const Loader()
          : Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Keep Shopping for ${widget.category}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: GridView.builder(
                      itemCount: categoryProducts!.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 15),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.4,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        final product = categoryProducts![index];
                        return Column(
                          children: [
                            SizedBox(
                              height: 130,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12, width: 0.5),
                                ),
                                child: Image.network(
                                  product.images[0],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(
                                left: 0,
                                top: 5,
                                right: 15,
                              ),
                              child: Text(
                                product.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
    );
  }
}
