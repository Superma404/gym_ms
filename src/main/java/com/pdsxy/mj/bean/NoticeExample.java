package com.pdsxy.mj.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class NoticeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public NoticeExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andNoIdIsNull() {
            addCriterion("no_id is null");
            return (Criteria) this;
        }

        public Criteria andNoIdIsNotNull() {
            addCriterion("no_id is not null");
            return (Criteria) this;
        }

        public Criteria andNoIdEqualTo(Integer value) {
            addCriterion("no_id =", value, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdNotEqualTo(Integer value) {
            addCriterion("no_id <>", value, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdGreaterThan(Integer value) {
            addCriterion("no_id >", value, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("no_id >=", value, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdLessThan(Integer value) {
            addCriterion("no_id <", value, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdLessThanOrEqualTo(Integer value) {
            addCriterion("no_id <=", value, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdIn(List<Integer> values) {
            addCriterion("no_id in", values, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdNotIn(List<Integer> values) {
            addCriterion("no_id not in", values, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdBetween(Integer value1, Integer value2) {
            addCriterion("no_id between", value1, value2, "noId");
            return (Criteria) this;
        }

        public Criteria andNoIdNotBetween(Integer value1, Integer value2) {
            addCriterion("no_id not between", value1, value2, "noId");
            return (Criteria) this;
        }

        public Criteria andNoNameIsNull() {
            addCriterion("no_name is null");
            return (Criteria) this;
        }

        public Criteria andNoNameIsNotNull() {
            addCriterion("no_name is not null");
            return (Criteria) this;
        }

        public Criteria andNoNameEqualTo(String value) {
            addCriterion("no_name =", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameNotEqualTo(String value) {
            addCriterion("no_name <>", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameGreaterThan(String value) {
            addCriterion("no_name >", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameGreaterThanOrEqualTo(String value) {
            addCriterion("no_name >=", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameLessThan(String value) {
            addCriterion("no_name <", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameLessThanOrEqualTo(String value) {
            addCriterion("no_name <=", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameLike(String value) {
            addCriterion("no_name like", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameNotLike(String value) {
            addCriterion("no_name not like", value, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameIn(List<String> values) {
            addCriterion("no_name in", values, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameNotIn(List<String> values) {
            addCriterion("no_name not in", values, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameBetween(String value1, String value2) {
            addCriterion("no_name between", value1, value2, "noName");
            return (Criteria) this;
        }

        public Criteria andNoNameNotBetween(String value1, String value2) {
            addCriterion("no_name not between", value1, value2, "noName");
            return (Criteria) this;
        }

        public Criteria andNoContentIsNull() {
            addCriterion("no_content is null");
            return (Criteria) this;
        }

        public Criteria andNoContentIsNotNull() {
            addCriterion("no_content is not null");
            return (Criteria) this;
        }

        public Criteria andNoContentEqualTo(String value) {
            addCriterion("no_content =", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentNotEqualTo(String value) {
            addCriterion("no_content <>", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentGreaterThan(String value) {
            addCriterion("no_content >", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentGreaterThanOrEqualTo(String value) {
            addCriterion("no_content >=", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentLessThan(String value) {
            addCriterion("no_content <", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentLessThanOrEqualTo(String value) {
            addCriterion("no_content <=", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentLike(String value) {
            addCriterion("no_content like", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentNotLike(String value) {
            addCriterion("no_content not like", value, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentIn(List<String> values) {
            addCriterion("no_content in", values, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentNotIn(List<String> values) {
            addCriterion("no_content not in", values, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentBetween(String value1, String value2) {
            addCriterion("no_content between", value1, value2, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoContentNotBetween(String value1, String value2) {
            addCriterion("no_content not between", value1, value2, "noContent");
            return (Criteria) this;
        }

        public Criteria andNoTimeIsNull() {
            addCriterion("no_time is null");
            return (Criteria) this;
        }

        public Criteria andNoTimeIsNotNull() {
            addCriterion("no_time is not null");
            return (Criteria) this;
        }

        public Criteria andNoTimeEqualTo(Date value) {
            addCriterionForJDBCDate("no_time =", value, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("no_time <>", value, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("no_time >", value, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("no_time >=", value, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeLessThan(Date value) {
            addCriterionForJDBCDate("no_time <", value, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("no_time <=", value, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeIn(List<Date> values) {
            addCriterionForJDBCDate("no_time in", values, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("no_time not in", values, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("no_time between", value1, value2, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("no_time not between", value1, value2, "noTime");
            return (Criteria) this;
        }

        public Criteria andNoAuthorIsNull() {
            addCriterion("no_author is null");
            return (Criteria) this;
        }

        public Criteria andNoAuthorIsNotNull() {
            addCriterion("no_author is not null");
            return (Criteria) this;
        }

        public Criteria andNoAuthorEqualTo(String value) {
            addCriterion("no_author =", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorNotEqualTo(String value) {
            addCriterion("no_author <>", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorGreaterThan(String value) {
            addCriterion("no_author >", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("no_author >=", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorLessThan(String value) {
            addCriterion("no_author <", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorLessThanOrEqualTo(String value) {
            addCriterion("no_author <=", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorLike(String value) {
            addCriterion("no_author like", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorNotLike(String value) {
            addCriterion("no_author not like", value, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorIn(List<String> values) {
            addCriterion("no_author in", values, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorNotIn(List<String> values) {
            addCriterion("no_author not in", values, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorBetween(String value1, String value2) {
            addCriterion("no_author between", value1, value2, "noAuthor");
            return (Criteria) this;
        }

        public Criteria andNoAuthorNotBetween(String value1, String value2) {
            addCriterion("no_author not between", value1, value2, "noAuthor");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}