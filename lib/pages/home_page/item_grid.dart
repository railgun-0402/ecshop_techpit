import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemGrid extends StatelessWidget {
  const ItemGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return _ItemCard(id: index);
            },
          childCount: 10,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.8
        ),
      ),
    );
  }
}

class _ItemCard extends StatelessWidget {
  const _ItemCard({Key? key, required this.id}) : super(key: key);

  final int id;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width / 2 * 0.8,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1625&q=80"
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 0.2,
                offset: Offset(3, 3),
              ),
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              'Super Shoes 1',
               style: GoogleFonts.montserrat(),
             ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 2),
             child: Text(
               '12800yen',
               style: GoogleFonts.montserrat(),
             ),
           ),
      ],
    );
  }
}

