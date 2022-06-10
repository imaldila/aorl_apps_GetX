import 'package:aorl_apps_getx/features/dio_list/controllers/diolist_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'components/card_user.dart';

class DioListScreen extends StatelessWidget {
  const DioListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usersC = Get.put(DioListController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio GetX'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                if (usersC.isFetching.isTrue) {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const CardUserSkelton(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemCount: 10,
                  );
                }

                if (usersC.isFetching.isFalse) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: usersC.userData.length,
                    itemBuilder: (context, index) => UserCard(
                      users: usersC.userData,
                      index: index,
                    ),
                  );
                } else {
                  return const Center(
                    child: Text('Something went wrong.'),
                  );
                }
              }),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    usersC.fetchListUser();
                    print(usersC.userData.length);
                  },
                  child: const Text('GET'),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // SizedBox(
              //   width: 100,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       userC.postUser(
              //         email: 'aldila@email.com',
              //         firstName: 'Aldila',
              //         lastName: 'Nurhadiputra',
              //       );
              //       print(user?.email ?? '-');
              //     },
              //     child: const Text('POST'),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardUserSkelton extends StatelessWidget {
  const CardUserSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Skelton(
          height: 80,
          width: 80,
          borderRadius: BorderRadius.circular(100),
        ),
        const SizedBox(
          width: 16,
        ),
        const Expanded(
          child: Skelton(
            // width: MediaQuery.of(context).size.width / 1.5,
            height: 100,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}

class Skelton extends StatelessWidget {
  const Skelton({
    Key? key,
    this.height,
    this.width,
    this.borderRadius,
  }) : super(key: key);

  final double? height, width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.04),
            borderRadius: borderRadius ??
                const BorderRadius.all(
                  Radius.circular(16),
                ),
          ),
        ),
        baseColor: Colors.black,
        highlightColor: Colors.grey);
  }
}
