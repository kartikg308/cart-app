import 'package:cart/item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

void main() {
  runApp(new MyApp());
}

var data = Hive.box('cartdata');

final List<Map<String, Object?>> product = [
  {
    "tenant_id": 100,
    "name": "PDT SIX",
    "custom_code": "pp06",
    "unitprice": "2500",
    "msp": "0",
    "id": 1021,
    "is_active": true,
    "product_option1": [1047, 1048, 1314],
    "meta": null,
    "discount": {"is_discount_percent": false, "discount_value": 300},
    "gst": "0",
    "sp": 2200,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "ACC-1500",
    "custom_code": "JM123",
    "unitprice": "1500",
    "msp": "0",
    "id": 1022,
    "is_active": true,
    "product_option1": [1047],
    "meta": null,
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 1500,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Happisales",
    "custom_code": "happi",
    "unitprice": "500",
    "msp": "0.00",
    "id": 1023,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "Test4",
      "specifications": "Teste",
      "features": "Test4",
      "imageId": "",
      "variant": "Master"
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 500,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Happisales1",
    "custom_code": "happi",
    "unitprice": "500",
    "msp": "0.00",
    "id": 1024,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "specifications": "Test",
      "features": "Test",
      "variant": "Economy",
      "description": "Test"
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 500,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Happisales1",
    "custom_code": "happi",
    "unitprice": "5000",
    "msp": "0.00",
    "id": 1025,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "specifications": "Test",
      "features": "Test",
      "variant": "Economy",
      "description": "Test"
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 5000,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Happisales1",
    "custom_code": "happi",
    "unitprice": "500",
    "msp": "0.00",
    "id": 1027,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "specifications": "Test",
      "features": "Test",
      "variant": "Economy",
      "description": "Test"
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 500,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Test Product",
    "custom_code": "test2",
    "unitprice": "600",
    "msp": "0.00",
    "id": 1028,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "Test Product",
      "specifications": "Test Product",
      "features": "Test Product",
      "variant": "Basic",
      "imageId": "df5df994-9521-11ea-884e-828d521fa1c5"
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 600,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "RocaParry",
    "custom_code": "roca",
    "unitprice": "2000",
    "msp": "0.00",
    "id": 1029,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "test",
      "specifications": "Test",
      "features": "Test",
      "variant": "Economy",
      "imageId": ""
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 2000,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Ball Valve",
    "custom_code": "TEST001",
    "unitprice": "800",
    "msp": "0.00",
    "id": 1294,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "",
      "specifications": "",
      "features": "",
      "variant": "",
      "imageId": ""
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "30.22",
    "sp": 800,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Long Body Water Tap",
    "custom_code": "TESSS",
    "unitprice": "2000",
    "msp": "0.00",
    "id": 1295,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "",
      "specifications": "",
      "features": "",
      "variant": "",
      "imageId": ""
    },
    "discount": {"is_discount_percent": false, "discount_value": 0},
    "gst": "0",
    "sp": 2000,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Asian Paints royale",
    "custom_code": "TFRT23",
    "unitprice": "7989",
    "msp": "0.00",
    "id": 1296,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "",
      "specifications": "",
      "features": "",
      "variant": "",
      "imageId": ""
    },
    "discount": {"is_discount_percent": false, "discount_value": 200},
    "gst": "0",
    "sp": 7789,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Asian Paimts",
    "custom_code": "TRET",
    "unitprice": "700",
    "msp": "0.00",
    "id": 1297,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "",
      "specifications": "",
      "features": "",
      "variant": "",
      "imageId": ""
    },
    "discount": {"is_discount_percent": true, "discount_value": "49"},
    "gst": "10",
    "sp": 357,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "TESTSS",
    "custom_code": "test",
    "unitprice": "100",
    "msp": "0.00",
    "id": 1336,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "",
      "specifications": "",
      "features": "",
      "variant": "",
      "imageId": ""
    },
    "discount": {"is_discount_percent": true, "discount_value": 0},
    "gst": "9",
    "sp": 100,
    "product_variants": [],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "Tshirt-Men",
    "custom_code": "2345",
    "unitprice": "3000",
    "msp": "0.00",
    "id": 1337,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "",
      "specifications": "",
      "features": "",
      "variant": "",
      "imageId": ""
    },
    "discount": {"is_discount_percent": false, "discount_value": "100"},
    "gst": "9",
    "sp": 2900,
    "product_variants": [
      {
        "product_id": 1337,
        "variant_type": "color",
        "variant_value": "Black",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:57:44.277965+00:00"
      },
      {
        "product_id": 1337,
        "variant_type": "color",
        "variant_value": "Green",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:57:44.277965+00:00"
      },
      {
        "product_id": 1337,
        "variant_type": "color",
        "variant_value": "Red",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:57:44.277965+00:00"
      },
      {
        "product_id": 1337,
        "variant_type": "size",
        "variant_value": "Large",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:57:44.277965+00:00"
      },
      {
        "product_id": 1337,
        "variant_type": "size",
        "variant_value": "Medium",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:57:44.277965+00:00"
      }
    ],
    "product_accessories": []
  },
  {
    "tenant_id": 100,
    "name": "AC",
    "custom_code": "23454",
    "unitprice": "50000",
    "msp": "0.00",
    "id": 1341,
    "is_active": true,
    "product_option1": null,
    "meta": {
      "description": "",
      "specifications": "",
      "features": "",
      "variant": "",
      "imageId": ""
    },
    "discount": {"is_discount_percent": false, "discount_value": "100"},
    "gst": "9",
    "sp": 49900,
    "product_variants": [
      {
        "product_id": 1341,
        "variant_type": "color",
        "variant_value": "Red",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:40:41.353953+00:00"
      },
      {
        "product_id": 1341,
        "variant_type": "size",
        "variant_value": "1.5Ton",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:40:41.353953+00:00"
      },
      {
        "product_id": 1341,
        "variant_type": "size",
        "variant_value": "2Ton",
        "tenant_id": 100,
        "created_at": "2021-04-19T07:40:41.353953+00:00"
      }
    ],
    "product_accessories": [
      {
        "accessories_id": 1001,
        "product_id": 1341,
        "name": "Ac filter",
        "selling_price": 1200,
        "gst": 9,
        "created_at": "2021-04-19T07:40:41.353953+00:00"
      },
      {
        "accessories_id": 1006,
        "product_id": 1341,
        "name": "Ac filter1",
        "selling_price": 200,
        "gst": 9,
        "created_at": "2021-04-19T08:28:13.921676+00:00"
      }
    ]
  }
];

final List<dynamic>? cart = [];

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var c = 0.obs;
    return new MaterialApp(
      initialRoute: '/cart',
      routes: {'/cart': (context) => new Cart()},
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black26,
        textTheme: Typography.whiteCupertino,
        unselectedWidgetColor: Colors.blue,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Store"),
          centerTitle: true,
          actions: [
            new TextButton(
                child: Icon(Icons.shopping_cart_rounded),
                onPressed: () => {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SafeArea(child: Text('working'));
                          })
                    })
          ],
        ),
        body: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              onTap: () {
                // ignore: unused_local_variable
                List<String> tag1 = [], tag2 = [];
                var cartItems = Map<String, dynamic>();
                color.clear();
                sizes.clear();
                variant_color(product[index]['product_variants']);
                variant_size(product[index]['product_variants']);
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      bool val = false;
                      return SafeArea(
                          maintainBottomViewPadding: true,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  '${product[index]['name']}',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                              Text('Colors',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.purpleAccent)),
                              color.length == 0
                                  ? Text('Not Available')
                                  : Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          color.length > 1
                                              ? Column(
                                                  children: [
                                                    CheckboxListTile(
                                                        value: val,
                                                        checkColor: Colors.blue,
                                                        title:
                                                            Text('${color[0]}'),
                                                        selected: val,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            val = value!;
                                                          });
                                                        }),
                                                    CheckboxListTile(
                                                        value: val,
                                                        checkColor: Colors.blue,
                                                        title:
                                                            Text('${color[1]}'),
                                                        onChanged: (value) {
                                                          setState(() {
                                                            val = value!;
                                                          });
                                                        })
                                                  ],
                                                )
                                              : CheckboxListTile(
                                                  value: val,
                                                  checkColor: Colors.blue,
                                                  title: Text('${color[0]}'),
                                                  onChanged: (value) {
                                                    setState(() {
                                                      val = value!;
                                                    });
                                                  })
                                        ],
                                      ),
                                    ),
                              Text('Sizes of product',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.purpleAccent)),
                              sizes.length == 0
                                  ? Text('Not Available')
                                  : Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          color.length > 1
                                              ? Column(
                                                  children: [
                                                    CheckboxListTile(
                                                        value: true,
                                                        checkColor: Colors.blue,
                                                        title:
                                                            Text('${sizes[0]}'),
                                                        onChanged: (value) {
                                                          setState(() {
                                                            val = value!;
                                                          });
                                                        }),
                                                    CheckboxListTile(
                                                        value: val,
                                                        checkColor: Colors.blue,
                                                        title:
                                                            Text('${sizes[1]}'),
                                                        onChanged: (value) {
                                                          setState(() {
                                                            val = value!;
                                                          });
                                                        })
                                                  ],
                                                )
                                              : CheckboxListTile(
                                                  value: val,
                                                  checkColor: Colors.blue,
                                                  title: Text('${sizes[0]}'),
                                                  onChanged: (value) {
                                                    setState(() {
                                                      val = value!;
                                                    });
                                                  })
                                        ],
                                      ),
                                    ),
                              Text('Quantity',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.purpleAccent)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      // ignore: unrelated_type_equality_checks
                                      onPressed: () => {c == 0 ? 0 : c--},
                                      child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 30),
                                      )),
                                  Obx(() => Text(
                                        "$c",
                                        style: TextStyle(fontSize: 30),
                                      )),
                                  TextButton(
                                      onPressed: () => c++,
                                      child: Text(
                                        '+',
                                        style: TextStyle(fontSize: 30),
                                      )),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () => {
                                  cartItems['name'] = product[index]['name'],
                                  cartItems['sp'] = product[index]['sp'],
                                  cartItems['units'] = c,
                                  cart!.add(cartItems),
                                  data.put('items', cart),
                                  Get.to(Cart()),
                                },
                                child: Text('Add To Cart',
                                    style: TextStyle(fontSize: 10)),
                              )
                            ],
                          ));
                    });
              },
              title: Text('${product[index]['name']}'),
              subtitle: Text(
                  "Unit Price :  ${product[index]['unitprice']} \nSpecial Price : ${product[index]['sp']}"),
            ));
          },
        ),
      ),
    );
  }
}

class Cart extends StatefulWidget {
  @override
  _Cart createState() => _Cart();
}

class _Cart extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var data1 = data.get('items');
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black26,
        textTheme: Typography.whiteCupertino,
        unselectedWidgetColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () => Navigator.pop(context, true),
            alignment: Alignment.centerLeft,
          ),
        ),
        body: ListView.builder(
            itemCount: data1!.length,
            itemBuilder: (context, index) {
              return new Card(
                child: ListTile(
                  title: Text('${data1![index]['name']}'),
                  subtitle: Text(
                      'Price : ${data1![index]['sp'] * data1![index]['units']}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    color: Colors.red,
                    onPressed: () => data.delete('items'),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
