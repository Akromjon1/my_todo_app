import 'package:flutter/material.dart';
import 'package:todo_app/services/lang_service.dart';
import 'package:todo_app/services/theme_service.dart';
class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);
  static const String id = "task_list";
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.colorBackgroundLight,
      appBar: AppBar(
        backgroundColor: ThemeService.colorBackgroundLight,
        foregroundColor: ThemeService.colorBlack,
        elevation: 0,
        title: Text("Task list"),
        leading: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      // splashRadius: 2.0,

                      //side: BorderSide(color: AppColors.colorMain, width: 2.0),
                      value: this.value ,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                    Text("Task Name", style: ThemeService.textStyleHeader(),),
                  ],
                ),
                Icon(Icons.star_border, color: ThemeService.colorBlack.withOpacity(.6),),

              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Icon(Icons.date_range, color: ThemeService.colorBlack.withOpacity(.6),),
                SizedBox(width: 10,),
                Text("add_due_date".tr, style: ThemeService.textStyleCaption(color: ThemeService.colorBlack.withOpacity(.6)),),
              ],
            ),
            const Divider(),
            Text("add_note".tr, style: ThemeService.textStyleCaption(color: ThemeService.colorBlack.withOpacity(.6)),),
            SizedBox(height: 100,),
            TextField(

            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Created on Mon, 28 March", style: ThemeService.textStyleCaption(color: ThemeService.colorBlack.withOpacity(.6)),),
            Icon(Icons.delete_outline_outlined, color: ThemeService.colorBlack.withOpacity(.6))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
