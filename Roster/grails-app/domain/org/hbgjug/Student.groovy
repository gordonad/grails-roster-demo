package org.hbgjug

class Student {
  String firstName
  String lastName
  String companyName
  String emailAddress
  String phoneNumber

    static constraints = {
      firstName(blank:false, minSize:2, maxSize:50)
      lastName(blank:false, minSize:2, maxSize:50)
      companyName(blank:false, minSize:2, maxSize:80)
      emailAddress(blank:false, email:true)
      phoneNumber(blank:true, usPhone:true)
    }

  
}
