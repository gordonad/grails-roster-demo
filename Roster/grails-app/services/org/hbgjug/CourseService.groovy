package org.hbgjug

class CourseService {

    boolean transactional = true

    def boolean save(Course course) {
      if (course.save(flush:true)){
        return true
      }
      return false
    }
}
