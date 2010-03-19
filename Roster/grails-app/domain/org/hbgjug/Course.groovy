package org.hbgjug

class Course {
  static hasMany = [students:Student]

  String courseName
  Date courseDate
  Integer maxStudents
  Integer minStudents

    static constraints = {
      courseName(blank:false, unique:true, minSize:2, maxSize:100)
      courseDate(nullable:false, min:new Date())
      minStudents(nullable:false, min:2)
      maxStudents(nullable:false, max:20)
    }

  
}
