import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String groupSelectedPizza = "";
  String groupValueSize = "";
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pizza",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pizza",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 125,
                  height: 210,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Image.network(
                          "https://nomanbefore.com/wp-content/uploads/2017/01/Naples-e1517899572496.jpg",
                          width: 140,
                          height: 70,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Pizza1",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("\$8",
                           style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Radio(value: "Yes", groupValue: groupSelectedPizza, onChanged: (value){
                          setState(() {
                            groupSelectedPizza = value!;
                          });
                        })              
                      ],
                    ),
                  ),
                ),
                 Container(
                  width: 125,
                  height: 210,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Image.network(
                          "https://lamag.com/.image/t_share/MTk3NTU1OTA2Nzk5Njc1MDcy/20130707-258207-marg-body.jpg",
                          width: 140,
                          height: 70,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Pizza2",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("\$10",
                           style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Radio(value: "Now", groupValue: groupSelectedPizza, onChanged: (value){
                          setState(() {
                            groupSelectedPizza = value!;
                          });
                        })  
                      ],
                    ),
                  ),
                ),
                 Container(
                  width: 125,
                  height: 210,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Image.network(
                          "https://lasorrentinavw.com/wp-content/uploads/2020/05/pizza-in-italy-vs-america.jpg",
                          width: 140,
                          height: 70,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Pizza3",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("\$12",
                           style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Radio(value: "No", groupValue: groupSelectedPizza, onChanged: (value){
                          setState(() {
                            groupSelectedPizza = value!;
                          });
                        })
                        
                      ],
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Size",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Radio(//Bagian Small
                    value: "Yes",
                    groupValue: groupValueSize,
                    onChanged: (value) {
                      setState(() {
                        groupValueSize = value!;
                      });
                    }),
                Radio(//Bagian Medium
                    value: "Now",
                    groupValue: groupValueSize,
                    onChanged: (value) {
                      setState(() {
                        groupValueSize = value!;
                      });
                    }),
                Radio(//Bagian Large
                    value: "No",
                    groupValue: groupValueSize,
                    onChanged: (value) {
                      setState(() {
                        groupValueSize = value!;
                      });
                    }),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Small",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Text("Medium",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),Text("Large",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Toppings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Avocado",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Lobster",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Bacon",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Broccoli",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Oyster",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Duck",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Onions",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Salmon",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Ham",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Zucchini",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Tuna",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked = value!;
                  });
                }),
                const Text("Sausage",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ],
            ),
            
          const Text("Price",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          ),
          const Text("\$0",
            style: TextStyle(
              fontSize: 22
            ),
          )
          ],
        ),
      ),
    );
  }
}
