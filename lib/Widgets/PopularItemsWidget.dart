// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../Pages/ItemPage.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          children: [
            buildItemCard(context, "Abacate", "images/avocado.png", "Uma fruta saborosa", 3.49),
            buildItemCard(context, "Manga Tommy", "images/mango.png", "Uma fruta suculenta", 4.99),
            buildItemCard(context, "Banana Prata", "images/banana.png", "Uma fruta doce", 3.99),
            buildItemCard(context, "Abacaxi", "images/pineapple.png", "Uma fruta tropical", 8.89),
            buildItemCard(context, "Cenoura", "images/carrot.png", "Um vegetal saudável", 7.49),
          ],
        ),
      ),
    );
  }

  Widget buildItemCard(BuildContext context, String nome, String imagem, String descricao, double preco) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemPage(nome, imagem, descricao, preco),
            ),
          );
        },
        child: Container(
          width: 170,
          height: 225,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    imagem,
                    height: 130,
                  ),
                ),
                Text(
                  nome,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Kg",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "R\$ ${preco.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
