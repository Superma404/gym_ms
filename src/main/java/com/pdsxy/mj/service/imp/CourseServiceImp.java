package com.pdsxy.mj.service.imp;

import com.pdsxy.mj.bean.Course;
import com.pdsxy.mj.dao.CourseMapper;
import com.pdsxy.mj.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("courseService")
public class CourseServiceImp implements CourseService {

    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Course> selectAll() {
        return courseMapper.selectByExample(null);
    }

    @Override
    public Course selectByCouid(Integer couid) {
        return courseMapper.selectByPrimaryKey(couid);
    }

    @Override
    public void addCourse(Course course) {
        courseMapper.insertSelective(course);
    }

    @Override
    public void updateCourse(Course course) {
        courseMapper.updateByPrimaryKeySelective(course);
    }

    @Override
    public void delectCourse(Integer couid) {
        courseMapper.deleteByPrimaryKey(couid);
    }

    @Override
    public void queryDel(int[] array) {
        courseMapper.deleteByMorecouId(array);
    }
}
