import 'package:flutter/material.dart';
import 'package:tebale_app/employee.dart';
import 'package:tebale_app/widgets/custom_appbar.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  final List<Employee> _employees = [
    Employee(
      id: '1',
      name: 'أمجد',
      position: 'مبرمج',
      salary: '\$2100',
      icon: Icons.code,
    ),
    Employee(
      id: '2',
      name: 'علي',
      position: 'مصمم',
      salary: '\$1500',
      icon: Icons.design_services,
    ),
    Employee(
      id: '3',
      name: 'محمد',
      position: 'تسويق',
      salary: '\$1800',
      icon: Icons.campaign,
    ),
    Employee(
      id: '4',
      name: 'العز',
      position: 'مديرة مشروع',
      salary: '\$3200',
      icon: Icons.manage_accounts,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "إدارة الموظفين"),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Center(child: Text("DataTable")),
          SizedBox(height: 15),
          DataTable(
            columnSpacing: 28.0,
            headingRowColor: MaterialStateProperty.all(
              Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            headingTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Theme.of(context).primaryColor,
            ),
            columns: const [
              DataColumn(label: Text('الاسم')),
              DataColumn(label: Text('الوظيفة')),
              DataColumn(label: Text('الراتب')),
            ],
            rows:
                _employees.map((employee) {
                  return DataRow(
                    cells: [
                      DataCell(
                        Row(
                          children: [
                            Icon(
                              employee.icon,
                              color: Theme.of(context).primaryColor,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              employee.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DataCell(Text(employee.position)),
                      DataCell(
                        Text(
                          employee.salary,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),

          SizedBox(height: 20),
          Center(child: Text("Table")),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(20),
            child: Table(
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.shop_2_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 20,
                        ),
                        Text("Shop"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.card_travel_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 20,
                        ),
                        Text("Cart"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 20,
                        ),
                        Text("Profile"),
                      ],
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    Column(children: [Text("Shop")]),
                    Column(children: [Text("Cart")]),
                    Column(children: [Text("Profile")]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
