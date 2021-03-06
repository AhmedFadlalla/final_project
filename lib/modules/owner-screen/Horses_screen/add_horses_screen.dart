import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl.dart';

import '../../../layouts/owner_home_layout/cubit/owner_cubit.dart';
import '../../../layouts/owner_home_layout/cubit/owner_state.dart';
import '../../../shared/component/components.dart';

class AddHorseScreen extends StatelessWidget {
  const AddHorseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OwnerCubit.get(context).getSectionsData();
    return BlocConsumer<OwnerCubit, OwnerState>(
        builder: (context, state) {
          var horsenameController = TextEditingController();
          var fathernameController = TextEditingController();
          var fathername1Controller = TextEditingController();
          var fathername2Controller = TextEditingController();
          var mothernameController = TextEditingController();
          var mothername1Controller = TextEditingController();
          var mothername2Controller = TextEditingController();
          var ownernameController = TextEditingController();
          var boxnumController = TextEditingController();
          var sectionNumberController = TextEditingController();
          var priceController = TextEditingController();
          var farmController = TextEditingController();
          var microController = TextEditingController();
          var dateController = TextEditingController();
          var sourceLocationController = TextEditingController();

          var formKey = GlobalKey<FormState>();

          var cubit = OwnerCubit.get(context);
          farmController.text = cubit.ownerModel!.ownerName;

          return Scaffold(
              body: Form(
                key: formKey,
                child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 190.0,
                            child: Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 65.0,
                                  backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                                  child: CircleAvatar(
                                    radius: 60.0,
                                    backgroundImage: cubit.horseImage == null
                                        ? NetworkImage(
                                        'https://store-images.s-microsoft.com/image/apps.62288.13620585470013536.11ea7ace-068b-4450-a62e-2233e0b32064.39ccf900-bfd0-48d2-8259-e9bbfa50f4c2?mode=scale&q=90&h=300&w=300')
                                        : FileImage(cubit.horseImage!)
                                    as ImageProvider,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      cubit.getHorseImage();
                                    },
                                    icon: CircleAvatar(
                                      radius: 20.0,
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 16.0,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: microController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ?????????? ??????????';
                                }
                                return null;
                              },
                              label: '?????? ?????????? ?????? ??????????????????????',
                              prefixIcon: Icons.drive_file_rename_outline),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: horsenameController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ?????????? ?????????? ';
                                }
                              },
                              label: '?????? ????????????',
                              prefixIcon: Icons.drive_file_rename_outline),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: defaultFormField(
                                    controller: fathernameController,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' ?????? ?????????? ?????? ????????';
                                      }
                                    },
                                    label: '?????? ???????? ',
                                    prefixIcon: Icons.ad_units),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Expanded(
                                child: defaultFormField(
                                    controller: mothernameController,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return '?????? ?????????? ?????? ????????';
                                      }
                                    },
                                    label: '?????? ????????',
                                    prefixIcon: Icons.ad_units),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: defaultFormField(
                                    controller: fathername1Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' ?????? ?????????? ?????? ????????';
                                      }
                                    },
                                    label: '?????? ???????? ',
                                    prefixIcon: Icons.ad_units),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Expanded(
                                child: defaultFormField(
                                    controller: mothername1Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' ?????? ?????????? ?????? ??????????';
                                      }
                                    },
                                    label: '?????? ?????????? ',
                                    prefixIcon: Icons.ad_units),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: defaultFormField(
                                    controller: fathername2Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' ?????? ?????????? ?????? ???? ????????';
                                      }
                                    },
                                    label: '?????? ???? ???????? ',
                                    prefixIcon: Icons.ad_units),
                              ),
                              SizedBox(
                                width: 7.0,
                              ),
                              Expanded(
                                child: defaultFormField(
                                    controller: mothername2Controller,
                                    type: TextInputType.text,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return ' ?????? ?????????? ?????? ???? ??????????';
                                      }
                                    },
                                    label: '?????? ???? ?????????? ',
                                    prefixIcon: Icons.ad_units),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: ownernameController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ?????????? ?????? ???????????? ';
                                }
                              },
                              label: '?????? ????????????',
                              prefixIcon: Icons.add),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: farmController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ?????????? ?????? ?????????????? ';
                                }
                              },
                              label: '?????? ??????????????',
                              prefixIcon: Icons.add),
                          SizedBox(
                            height: 20.0,
                          ),
                          defaultFormField(
                              controller: sectionNumberController,
                              type: TextInputType.text,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ?????????? ?????? ???????????? ';
                                }
                              },
                              label: '?????? ???????????? ',
                              prefixIcon: Icons.add),
                          SizedBox(
                            height: 20.0,
                          ),
                          BuildDropBottom(
                            dropdownButtonTitle: ' ???????? ????????????',
                            function: (newValue) {
                              cubit.onChangeSectionDropDownButton(newValue);
                            },
                            items: [
                              '?????????? ',
                              ' ??????????',
                              '??????????',
                              '?????????? ????????',
                              ' ?????????? ????????',
                            ].map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                            value: cubit.sectionValueChoose,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          BuildDropBottom(
                            dropdownButtonTitle: ' ???????? ?????? ???????????? ',
                            function: (newValue) {
                              cubit.onChangeSpecificDropDownButton(newValue);
                            },
                            items: [
                              '?????? ',
                              ' ??????',
                              '????????',
                              '????????',
                            ].map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                            value: cubit.specificValueChoose,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          BuildDropBottom(
                            dropdownButtonTitle: ' ???????? ?????????? ???????????? ',
                            function: (newValue) {
                              cubit.onChangeNationalityDropDownButton(newValue);
                            },
                            items: [
                              '???????? ',
                              ' ??????????????',
                            ].map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                            value: cubit.nationlityValueChoose,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          BuildDropBottom(
                            dropdownButtonTitle: ' ???????? ???????? ???????????? ',
                            function: (newValue) {
                              cubit.onChangeSourceDropDownButton(newValue);
                            },
                            items: [
                              '???????? ',
                              ' ???? ????????????',
                            ].map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                            value: cubit.sourceValueChoose,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: sourceLocationController,
                              type: TextInputType.text,
                              label: '?????????? ?????? ????????????',
                              prefixIcon: Icons.ad_units,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ???????????? ??????????';
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: boxnumController,
                              type: TextInputType.text,
                              label: '?????? ??????????????',
                              prefixIcon: Icons.ad_units,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ???????????? ??????????';
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                              controller: priceController,
                              type: TextInputType.text,
                              label: '??????????',
                              prefixIcon: Icons.ad_units,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return '?????? ???????????? ??????????';
                                }
                                return null;
                              }),
                          SizedBox(
                            height: 15.0,
                          ),
                          // Row(
                          //   children: [
                          //     Expanded(child: Text('?????? ?????????? ?????????? ?????????? ???????????? ')),
                          //     Expanded(
                          //       child: BuildDropBottom(
                          //         dropdownButtonTitle: ' ?????????? ',
                          //         function: (newValue) {
                          //           cubit.onChangeDayDropDownButton(newValue);
                          //         },
                          //         items: [
                          //           '1',
                          //           '2',
                          //           '3',
                          //           '4',
                          //           '5',
                          //           '6',
                          //           '7',
                          //           '6',
                          //           '8',
                          //           '9',
                          //           '10',
                          //           '11',
                          //           '12',
                          //           '13',
                          //           '14',
                          //           '15',
                          //           '16',
                          //           '17',
                          //           '18',
                          //           '19',
                          //           '20',
                          //           '21',
                          //           '22',
                          //           '23',
                          //           '24',
                          //           '25',
                          //           '26',
                          //           '27',
                          //           '28',
                          //           '29',
                          //           '30',
                          //           '31'
                          //         ].map((valueItem) {
                          //           return DropdownMenuItem(
                          //             value: valueItem,
                          //             child: Text(valueItem),
                          //           );
                          //         }).toList(),
                          //         value: cubit.DayValueChoose,
                          //       ),
                          //     ),
                          //     Expanded(
                          //       child: BuildDropBottom(
                          //         dropdownButtonTitle: ' ?????????? ',
                          //         function: (newValue) {
                          //           cubit.onChangeMonthsDropDownButton(newValue);
                          //         },
                          //         items: [
                          //           '??????????',
                          //           '????????????',
                          //           '????????',
                          //           '??????????',
                          //           '????????',
                          //           '??????????',
                          //           '??????????',
                          //           '??????????',
                          //           '????????????',
                          //           '????????????',
                          //           '????????????',
                          //           '????????????'
                          //         ].map((valueItem) {
                          //           return DropdownMenuItem(
                          //             value: valueItem,
                          //             child: Text(valueItem),
                          //           );
                          //         }).toList(),
                          //         value: cubit.MonthsValueChoose,
                          //       ),
                          //     ),
                          //     Expanded(
                          //       child: Directionality(
                          //         textDirection: TextDirection.rtl,
                          //         child: defaultFormField(
                          //             controller: dateController,
                          //             type: TextInputType.text,
                          //             label: '??????????',
                          //             prefixIcon: Icons.timeline_outlined,
                          //             validator: (value) {
                          //               if (value.isEmpty) {
                          //                 return '?????? ???????????? ??????????';
                          //               }
                          //               return null;
                          //             }),
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          defaultFormField(
                              controller: dateController,
                              type: TextInputType.datetime,

                              validator: (value){
                                if(value.isEmpty){
                                  return '?????? ?????????? ??????????????';
                                }
                                return null;
                              },
                              label: '???????? ?????????? ??????????????',

                              prefixIcon: Icons.date_range,

                            prefixIconTapFunction: (){
                                showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.parse('1990-01-01'),
                                    lastDate:DateTime.now())
                                    .then((value) {
                                      dateController.text=DateFormat.yMMMd().format(value!);

                                });
                            },),
                          SizedBox(
                            height: 15.0,
                          ),
                          BuildDropBottom(
                            dropdownButtonTitle: ' ???????? ??????????',
                            function: (newValue) {
                              cubit.onChangeRasanDropDownButton(newValue);
                            },
                            items: [
                              ' ????????????',
                              ' ????????????',
                              ' ??????????',
                              ' ??????????',
                              ' ??????????',
                            ].map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                            value: cubit.rasanValueChoose,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          BuildDropBottom(
                            dropdownButtonTitle: ' ???????? ??????????',
                            function: (newValue) {
                              cubit.onChangeGanderItem(newValue);
                            },
                            items: [
                              ' ??????',
                              ' ????????',
                            ].map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                            value: cubit.ganderValueChoose,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          BuildDropBottom(
                            dropdownButtonTitle: ' ????????  ??????????',
                            function: (newValue) {
                              cubit.onChangeColorItem(newValue);
                            },
                            items: [
                              '????????',
                              '????????',
                              '????????',
                              '????????????(????????????)',
                              '????????????(????????????)',
                              '??????',
                              '?????????????? (????????????)'
                            ].map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                            value: cubit.colorValueChoose,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ConditionalBuilder(
                              condition: state is! CreateHorseLoadingState,
                              builder: (context) => defaultButton(
                                  text: 'Submit',
                                  function: () {
                                    print(cubit.sectionValueChoose as String);
                                    print(microController.text);
                                    if (formKey.currentState!.validate()) {
                                      cubit.uploadHorseImage(
                                        horseName: horsenameController.text,
                                        fatherName: fathernameController.text,
                                        fatherName1: fathername1Controller.text,
                                        fatherName2: fathername2Controller.text,
                                        motherName: mothernameController.text,
                                        motherName1: mothername1Controller.text,
                                        motherName2: mothername2Controller.text,
                                        sectionNUmber: sectionNumberController.text,
                                        sectionName:
                                        cubit.sectionValueChoose as String,
                                        boxNum: boxnumController.text,
                                        owner: ownernameController.text,
                                        dateTime: dateController.text,
                                        initPrice: priceController.text,
                                        microshipCode: microController.text,
                                        type: cubit.rasanValueChoose as String,
                                        color: cubit.colorValueChoose as String,
                                        gander: cubit.ganderValueChoose as String,
                                        specific: cubit.specificValueChoose as String,
                                        nationality:
                                        cubit.nationlityValueChoose as String,
                                        source: cubit.sourceValueChoose as String,
                                        sourceLocation: sourceLocationController.text,
                                      );
                                    }
                                  }),
                              fallback: (context) =>
                                  Center(child: CircularProgressIndicator()))
                        ],
                      ),
                    )),
              ));
        },
        listener: (context, state) {});
  }
}
