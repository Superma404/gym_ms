package com.pdsxy.mj.service;


import com.pdsxy.mj.bean.Course;

import java.util.List;

public interface CourseService {
    List<Course> selectAll();

    Course selectByCouid(Integer couid);

    void addCourse(Course course);

    void updateCourse(Course course);

    void delectCourse(Integer couid);

    void queryDel(int[] array);

}


