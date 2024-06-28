import 'package:flutter/material.dart';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';
import 'package:graduation_project/pages/build_page/AutoBuild/recomm_page.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  List<dynamic> selectedCategories = [];
  List<dynamic> selectedsubCategories = [];
  String? selectedOption;
  String? CaseOption;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        NumberOfPage: 0,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 32, 32, 32), BlendMode.modulate),
                  image: AssetImage(
                    "images/start_background.avif",
                  ))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: DropDownTextField.multiSelection(
                    textFieldDecoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Select Categories",
                    ),
                    displayCompleteItem: true,
                    submitButtonColor: Color(0xff661781),
                    submitButtonTextStyle: TextStyle(color: Colors.white),
                    initialValue: const ["workstation"],
                    dropDownList: const [
                      DropDownValueModel(
                          name: 'Workstation', value: "workstation"),
                      DropDownValueModel(name: 'Desktop', value: "desktop"),
                      DropDownValueModel(name: 'Gaming', value: "gaming"),
                    ],
                    onChanged: (val) {
                      setState(() {
                        selectedCategories =
                            val.map((item) => item.value).toList();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: DropDownTextField.multiSelection(
                    textFieldDecoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Select SubCategories",
                    ),
                    displayCompleteItem: true,
                    submitButtonColor: Color(0xff661781),
                    submitButtonTextStyle: TextStyle(color: Colors.white),
                    initialValue: const ["gaming"],
                    dropDownList: const [
                      DropDownValueModel(name: 'Design', value: "design"),
                      DropDownValueModel(
                          name: 'Engineering', value: "engineering"),
                      DropDownValueModel(name: '3D', value: "3d"),
                      DropDownValueModel(name: 'Modeling', value: "modeling"),
                      DropDownValueModel(
                          name: 'Simulation', value: "simulation"),
                      DropDownValueModel(
                          name: 'Machine Learning', value: "machine learning"),
                      DropDownValueModel(name: 'Ai', value: "ai"),
                      DropDownValueModel(
                          name: 'Video Editing', value: "video editing"),
                      DropDownValueModel(name: 'Gaming', value: "gaming"),
                    ],
                    onChanged: (val) {
                      setState(() {
                        selectedsubCategories =
                            val.map((item) => item.value).toList();
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Do you prefer to invest in large ssd?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    RadioListTile(
                      title: Text(
                        'Yes',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 'yes',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text('No', style: TextStyle(color: Colors.white)),
                      value: 'no',
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                  ],
                ),
                Text(
                  "Do you prefer the case to be :",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: <Widget>[
                    RadioListTile(
                      title: Text(
                        'Tower',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 'tower',
                      groupValue: CaseOption,
                      onChanged: (value) {
                        setState(() {
                          CaseOption = value;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text('Mid tower',
                          style: TextStyle(color: Colors.white)),
                      value: 'mid tower',
                      groupValue: CaseOption,
                      onChanged: (value) {
                        setState(() {
                          CaseOption = value;
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text('Mini tower',
                          style: TextStyle(color: Colors.white)),
                      value: 'mini tower',
                      groupValue: CaseOption,
                      onChanged: (value) {
                        setState(() {
                          CaseOption = value;
                        });
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    String result2 = selectedsubCategories.join(" ");
                    String result1 = selectedCategories.join(" ");

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnotherPage(
                          selectedCategories: result1,
                          selectedSubCategories: result2,
                          selectedOption: selectedOption,
                          caseOption: CaseOption,
                        ),
                      ),
                    );
                  },
                  child: Text('build now'),
                ),
              ],
            ),
          ),
        ));
  }
}
