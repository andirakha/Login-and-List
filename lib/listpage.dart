import 'package:flutter/material.dart';

class StokBelanja {
  String produk;
  double harga;

  StokBelanja({required this.produk, required this.harga});
}

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List stockslist = [
    StokBelanja(produk: 'ASUS Vivobook Pro 16X OLED (K6604)', harga: 30999000),
    StokBelanja(
        produk: 'Vivobook Pro 16X OLED (N7600, 11th Gen Intel)',
        harga: 19299000),
    StokBelanja(
        produk: 'ASUS Vivobook S 15 OLED BAPE Edition (K5504)',
        harga: 17299000),
    StokBelanja(produk: 'Vivobook Pro 15 OLED (K6502)', harga: 16999000),
    StokBelanja(
        produk:
            'Vivobook Pro 14X OLED (M7400, AMD Ryzen™ 5000 Series Mobile Processors)',
        harga: 15999000),
    StokBelanja(
        produk:
            'ASUS Vivobook Pro 15 OLED (M6500, AMD Ryzen™ 5000 Series Mobile Processor)',
        harga: 14999000),
    StokBelanja(produk: 'ASUS Vivobook 14X OLED (K3405)', harga: 13599000),
    StokBelanja(produk: 'Vivobook Ultra 14 K413', harga: 13499000),
    StokBelanja(
        produk: 'Vivobook Pro 14 OLED (K3400, 11th Gen Intel)',
        harga: 12499000),
    StokBelanja(produk: 'ASUS Vivobook 13 Slate OLED (T3304)', harga: 12499000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'List Page',
        ),
        backgroundColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 53, 39, 248),
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: Colors.grey,
                      ),
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.close)),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: stockslist.length,
                  itemBuilder: (context, index) {
                    int index1 = index + 1;
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Text(
                            '$index1',
                            style: TextStyle(fontSize: 14),
                          ),
                          title: Text(
                            stockslist[index].produk,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Rp ${stockslist[index].harga}"),
                          trailing: GestureDetector(
                            onTap: () {
                              stockslist.removeWhere((element) {
                                return element.produk ==
                                    stockslist[index].produk;
                              });
                              setState(() {});
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
