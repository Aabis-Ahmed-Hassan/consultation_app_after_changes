import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.oxfordClassA,
    this.instructor,
    this.loremIpsumDolor,
    this.duration,
    this.lessonsCounter,
    this.id,
  }) {
    oxfordClassA = oxfordClassA ?? "Oxford Class A ";
    instructor = instructor ?? "Instructor";
    loremIpsumDolor = loremIpsumDolor ??
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
    duration = duration ?? "1x week 30 minutes";
    lessonsCounter = lessonsCounter ?? "14 Lessons";
    id = id ?? "";
  }

  String? oxfordClassA;

  String? instructor;

  String? loremIpsumDolor;

  String? duration;

  String? lessonsCounter;

  String? id;
}
