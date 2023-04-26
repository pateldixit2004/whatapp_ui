import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp_ui/screen/modal/callModal.dart';
import 'package:whatapp_ui/screen/modal/dataModal.dart';
import 'package:whatapp_ui/screen/modal/status.dart';

class data_Provider extends ChangeNotifier {
  List<DataModal> itemList = [
    DataModal(
        no: 795614578,
        path: 'assets/image/ga1.jpg',
        msg: 'Hi How Are You ?',
        time: '10:00'),
    DataModal(
        no: 984587315,
        path: 'assets/image/k1.jpg',
        msg: 'Hi How Are You ? ',
        time: '11:00'),
    DataModal(
        no: 857845156,
        path: 'assets/image/l1.jpg',
        msg: 'Hi How Are You ? ',
        time: '1:00'),
    DataModal(
        no: 705899686,
        path: 'assets/image/mm1.jpg',
        msg: 'Hi How Are You ? ',
        time: '1:00'),
    DataModal(
        no: 96864514,
        path: 'assets/image/mu1.jpg',
        msg: 'Hi How Are You ? ',
        time: ':00'),
    DataModal(
        no: 984587315,
        path: 'assets/image/r1.jpg',
        msg: 'Hi How Are You ? ',
        time: '3:00'),
    DataModal(
        no: 98653154,
        path: 'assets/image/mm1.jpg',
        msg: 'Hi How Are You ?',
        time: '4:00'),
    DataModal(
        no: 784518956,
        path: 'assets/image/mm1.jpg',
        msg: 'Hi How Are You ? ',
        time: '5:00'),
  ];
  List<statusbar> statusList = [
    statusbar(
        name: 'Ratan Tata', time: 'Today, 10:00', img: 'assets/image/r1.jpg'),
    statusbar(
        name: 'Mukesh Ambani',
        time: 'Today, 10:00',
        img: 'assets/image/mu1.jpg'),
    statusbar(
        name: 'Gatum Adani', time: 'Today, 10:00', img: 'assets/image/ga1.jpg'),
    statusbar(
        name: 'Lakshmi Mital',
        time: 'Today, 10:00',
        img: 'assets/image/l1.jpg'),
    statusbar(
        name: 'Kumar Mangalam Birla',
        time: 'Today, 10:00',
        img: 'assets/image/k1.jpg'),
  ];
  List<callModal> callList = [
    callModal(
      name: 'Ratan Tata',
      img: 'assets/image/r1.jpg',
      time: '18 April 6:20 pm',
      cach: Icon(
        Icons.call_received_rounded,
        color: Colors.red,
        size: 15,
      ),
      vach: Icon(Icons.videocam_rounded, color: Colors.green),
    ),
    callModal(
      name: 'Lakshmi Mital',
      img: 'assets/image/l1.jpg',
      time: '18 April 5:20 pm',
      cach: Icon(
        Icons.call_received_rounded,
        color: Colors.red,
        size: 15,
      ),
      vach: Icon(Icons.videocam_rounded, color: Colors.green),
    ),
    callModal(
      name: 'Mukesh Ambani',
      img: 'assets/image/mu1.jpg',
      time: '18 April 4:20 pm',
      cach: Icon(
        Icons.call_received_rounded,
        color: Colors.red,
        size: 15,
      ),
      vach: Icon(Icons.videocam_rounded, color: Colors.green),
    ),
  ];
}
