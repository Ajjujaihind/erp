class MyModel {
  String? message;
  String? homePage;
  String? fullName;
  String? userId;
  String? employeeId;
  String? phoneNo;
  String? shiftType;

  MyModel(
      {this.message,
      this.homePage,
      this.fullName,
      this.userId,
      this.employeeId,
      this.phoneNo,
      this.shiftType});

  MyModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    homePage = json['home_page'];
    fullName = json['full_name'];
    userId = json['user_id'];
    employeeId = json['employee_id'];
    phoneNo = json['phone_no'];
    shiftType = json['shift_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['home_page'] = this.homePage;
    data['full_name'] = this.fullName;
    data['user_id'] = this.userId;
    data['employee_id'] = this.employeeId;
    data['phone_no'] = this.phoneNo;
    data['shift_type'] = this.shiftType;
    return data;
  }
}
