import 'package:flutter/material.dart';
import 'package:product_app/core/appColors.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() =>
      _ProductDetailPageState();
}

class _ProductDetailPageState
    extends State<ProductDetailPage> {
  int quantity = 1;

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,

      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 390,
            ),

            child: Container(
              color: AppColors.white,

              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics:
                          const BouncingScrollPhysics(),

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(
                              left: 32,
                              right: 20,
                              top: 14,
                            ),

                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,

                              children: [

                                Text(
                                  '9:41',

                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:
                                        FontWeight.w600,
                                    color:
                                        AppColors.darkText,
                                  ),
                                ),

                                Row(
                                  children: [

                                    Icon(
                                      Icons
                                          .signal_cellular_alt,
                                      size: 15,
                                      color:
                                          AppColors.darkText,
                                    ),

                                    const SizedBox(
                                      width: 5,
                                    ),

                                    Icon(
                                      Icons.wifi,
                                      size: 16,
                                      color:
                                          AppColors.darkText,
                                    ),

                                    const SizedBox(
                                      width: 7,
                                    ),

                                    Container(
                                      width: 17,
                                      height: 9,

                                      decoration:
                                          BoxDecoration(
                                        border:
                                            Border.all(
                                          color:
                                              AppColors
                                                  .darkText,
                                          width: 1,
                                        ),

                                        borderRadius:
                                            BorderRadius
                                                .circular(2),
                                      ),

                                      child: Align(
                                        alignment:
                                            Alignment
                                                .centerRight,

                                        child: Container(
                                          width: 12,
                                          height: 5,

                                          margin:
                                              const EdgeInsets
                                                  .only(
                                            right: 1,
                                          ),

                                          decoration:
                                              BoxDecoration(
                                            color: AppColors
                                                .darkText,

                                            borderRadius:
                                                BorderRadius
                                                    .circular(
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 14,
                            ),

                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,

                              children: [

                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(
                                      context,
                                    );
                                  },

                                  padding:
                                      EdgeInsets.zero,

                                  constraints:
                                      const BoxConstraints(),

                                  icon: Icon(
                                    Icons
                                        .arrow_back_ios_new,

                                    size: 20,

                                    color:
                                        AppColors.darkText,
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {},

                                  padding:
                                      EdgeInsets.zero,

                                  constraints:
                                      const BoxConstraints(),

                                  icon: Icon(
                                    Icons
                                        .ios_share_outlined,

                                    size: 21,

                                    color:
                                        AppColors.darkText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 235,

                            child: Image.asset(
                              'assets/images/apple.jpg',

                              fit: BoxFit.contain,
                            ),
                          ),

                          const SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),

                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,

                              children: [

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,

                                    children: [

                                      Text(
                                        'Naturel Red Apple',

                                        style: TextStyle(
                                          fontSize: 19,

                                          fontWeight:
                                              FontWeight
                                                  .w700,

                                          color: AppColors
                                              .darkText,
                                        ),
                                      ),

                                      const SizedBox(
                                        height: 5,
                                      ),

                                      Text(
                                        '1kg, Price',

                                        style: TextStyle(
                                          fontSize: 13,

                                          color: AppColors
                                              .greyText,

                                          fontWeight:
                                              FontWeight
                                                  .w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite =
                                          !isFavorite;
                                    });
                                  },

                                  padding:
                                      EdgeInsets.zero,

                                  constraints:
                                      const BoxConstraints(),

                                  icon: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons
                                            .favorite_border,

                                    size: 27,

                                    color: isFavorite
                                        ? AppColors.favorite
                                        : AppColors.disabled,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),

                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,

                              children: [

                                Row(
                                  children: [
                                    IconButton(
                                      onPressed:
                                          quantity > 1
                                              ? () {
                                                  setState(() {
                                                    quantity--;
                                                  });
                                                }
                                              : null,

                                      padding:
                                          EdgeInsets.zero,

                                      constraints:
                                          const BoxConstraints(
                                        minWidth: 30,
                                        minHeight: 30,
                                      ),

                                      icon: const Icon(
                                        Icons.remove,
                                        size: 20,
                                        color:
                                            AppColors.disabled,
                                      ),
                                    ),

                                    Container(
                                      width: 38,
                                      height: 38,

                                      decoration:
                                          BoxDecoration(
                                        border:
                                            Border.all(
                                          color: Colors
                                              .grey.shade300,
                                        ),

                                        borderRadius:
                                            BorderRadius
                                                .circular(
                                          10,
                                        ),
                                      ),

                                      alignment:
                                          Alignment.center,

                                      child: Text(
                                        '$quantity',

                                        style: TextStyle(
                                          fontSize: 16,

                                          color: AppColors
                                              .darkText,

                                          fontWeight:
                                              FontWeight
                                                  .w600,
                                        ),
                                      ),
                                    ),

                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          quantity++;
                                        });
                                      },

                                      padding:
                                          EdgeInsets.zero,

                                      constraints:
                                          const BoxConstraints(
                                        minWidth: 35,
                                        minHeight: 35,
                                      ),

                                      icon: const Icon(
                                        Icons.add,
                                        size: 22,
                                        color:
                                            AppColors.primary,
                                      ),
                                    ),
                                  ],
                                ),

                                Text(
                                  '\$4.99',

                                  style: TextStyle(
                                    fontSize: 20,

                                    color:
                                        AppColors.darkText,

                                    fontWeight:
                                        FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 22,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),

                            child: Divider(
                              color:
                                  AppColors.divider,

                              thickness: 1,

                              height: 1,
                            ),
                          ),

                          Padding(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,

                              children: [

                                Text(
                                  'Product Detail',

                                  style: TextStyle(
                                    fontSize: 14,

                                    fontWeight:
                                        FontWeight.w700,

                                    color: AppColors
                                        .darkText,
                                  ),
                                ),

                                const SizedBox(
                                  height: 13,
                                ),

                                Text(
                                  'Apples Are Nutritious. '
                                  'Apples May Be Good For Weight '
                                  'Loss. Apples May Be Good For '
                                  'Your Heart. As Part Of A '
                                  'Healthy And Varied Diet.',

                                  style: TextStyle(
                                    fontSize: 12,

                                    height: 1.45,

                                    color: AppColors
                                        .greyText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _buildOptionRow(
                            title: 'Nutritions',

                            trailing: const Icon(
                              Icons.chevron_right,
                              size: 22,
                              color: AppColors.darkText,
                            ),
                          ),

                          Padding(
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),

                            child: SizedBox(
                              height: 55,

                              child: Row(
                                children: [

                                  Text(
                                    'Review',

                                    style: TextStyle(
                                      fontSize: 14,

                                      fontWeight:
                                          FontWeight
                                              .w700,

                                      color: AppColors
                                          .darkText,
                                    ),
                                  ),

                                  const Spacer(),

                                  Row(
                                    children:
                                        List.generate(
                                      5,

                                      (index) {
                                        return const Padding(
                                          padding:
                                              EdgeInsets
                                                  .only(
                                            left: 3,
                                          ),

                                          child: Icon(
                                            Icons.star,

                                            size: 16,

                                            color: AppColors
                                                .reviewStar,
                                          ),
                                        );
                                      },
                                    ),
                                  ),

                                  const SizedBox(
                                    width: 8,
                                  ),

                                  const Icon(
                                    Icons.chevron_right,

                                    size: 22,

                                    color:
                                        AppColors.darkText,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    color: AppColors.white,

                    padding:
                        const EdgeInsets.fromLTRB(
                      20,
                      10,
                      20,
                      30,
                    ),

                    child: SizedBox(
                      width: double.infinity,
                      height: 55,

                      child: ElevatedButton(
                        onPressed: () {

                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Product added to basket',
                              ),
                            ),
                          );
                        },

                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              AppColors.primary,

                          foregroundColor:
                              AppColors.white,

                          elevation: 0,

                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(
                              14,
                            ),
                          ),
                        ),

                        child: const Text(
                          'Add To Basket',

                          style: TextStyle(
                            fontSize: 15,

                            fontWeight:
                                FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildOptionRow({
    required String title,
    required Widget trailing,
  }) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 20),

      child: Container(
        height: 55,

        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.divider,
              width: 1,
            ),

            bottom: BorderSide(
              color: AppColors.divider,
              width: 1,
            ),
          ),
        ),

        child: Row(
          children: [

            Text(
              title,

              style: TextStyle(
                fontSize: 14,

                fontWeight:
                    FontWeight.w700,

                color: AppColors.darkText,
              ),
            ),

            const Spacer(),

            trailing,
          ],
        ),
      ),
    );
  }
}