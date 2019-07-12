package com.pdsxy.mj.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class CourseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CourseExample() {
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

        public Criteria andCouIdIsNull() {
            addCriterion("cou_id is null");
            return (Criteria) this;
        }

        public Criteria andCouIdIsNotNull() {
            addCriterion("cou_id is not null");
            return (Criteria) this;
        }

        public Criteria andCouIdEqualTo(Integer value) {
            addCriterion("cou_id =", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotEqualTo(Integer value) {
            addCriterion("cou_id <>", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdGreaterThan(Integer value) {
            addCriterion("cou_id >", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cou_id >=", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdLessThan(Integer value) {
            addCriterion("cou_id <", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdLessThanOrEqualTo(Integer value) {
            addCriterion("cou_id <=", value, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdIn(List<Integer> values) {
            addCriterion("cou_id in", values, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotIn(List<Integer> values) {
            addCriterion("cou_id not in", values, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdBetween(Integer value1, Integer value2) {
            addCriterion("cou_id between", value1, value2, "couId");
            return (Criteria) this;
        }

        public Criteria andCouIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cou_id not between", value1, value2, "couId");
            return (Criteria) this;
        }

        public Criteria andCouNameIsNull() {
            addCriterion("cou_name is null");
            return (Criteria) this;
        }

        public Criteria andCouNameIsNotNull() {
            addCriterion("cou_name is not null");
            return (Criteria) this;
        }

        public Criteria andCouNameEqualTo(String value) {
            addCriterion("cou_name =", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotEqualTo(String value) {
            addCriterion("cou_name <>", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameGreaterThan(String value) {
            addCriterion("cou_name >", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameGreaterThanOrEqualTo(String value) {
            addCriterion("cou_name >=", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLessThan(String value) {
            addCriterion("cou_name <", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLessThanOrEqualTo(String value) {
            addCriterion("cou_name <=", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameLike(String value) {
            addCriterion("cou_name like", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotLike(String value) {
            addCriterion("cou_name not like", value, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameIn(List<String> values) {
            addCriterion("cou_name in", values, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotIn(List<String> values) {
            addCriterion("cou_name not in", values, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameBetween(String value1, String value2) {
            addCriterion("cou_name between", value1, value2, "couName");
            return (Criteria) this;
        }

        public Criteria andCouNameNotBetween(String value1, String value2) {
            addCriterion("cou_name not between", value1, value2, "couName");
            return (Criteria) this;
        }

        public Criteria andCouContentIsNull() {
            addCriterion("cou_content is null");
            return (Criteria) this;
        }

        public Criteria andCouContentIsNotNull() {
            addCriterion("cou_content is not null");
            return (Criteria) this;
        }

        public Criteria andCouContentEqualTo(String value) {
            addCriterion("cou_content =", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentNotEqualTo(String value) {
            addCriterion("cou_content <>", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentGreaterThan(String value) {
            addCriterion("cou_content >", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentGreaterThanOrEqualTo(String value) {
            addCriterion("cou_content >=", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentLessThan(String value) {
            addCriterion("cou_content <", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentLessThanOrEqualTo(String value) {
            addCriterion("cou_content <=", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentLike(String value) {
            addCriterion("cou_content like", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentNotLike(String value) {
            addCriterion("cou_content not like", value, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentIn(List<String> values) {
            addCriterion("cou_content in", values, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentNotIn(List<String> values) {
            addCriterion("cou_content not in", values, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentBetween(String value1, String value2) {
            addCriterion("cou_content between", value1, value2, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouContentNotBetween(String value1, String value2) {
            addCriterion("cou_content not between", value1, value2, "couContent");
            return (Criteria) this;
        }

        public Criteria andCouImgIsNull() {
            addCriterion("cou_img is null");
            return (Criteria) this;
        }

        public Criteria andCouImgIsNotNull() {
            addCriterion("cou_img is not null");
            return (Criteria) this;
        }

        public Criteria andCouImgEqualTo(String value) {
            addCriterion("cou_img =", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgNotEqualTo(String value) {
            addCriterion("cou_img <>", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgGreaterThan(String value) {
            addCriterion("cou_img >", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgGreaterThanOrEqualTo(String value) {
            addCriterion("cou_img >=", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgLessThan(String value) {
            addCriterion("cou_img <", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgLessThanOrEqualTo(String value) {
            addCriterion("cou_img <=", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgLike(String value) {
            addCriterion("cou_img like", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgNotLike(String value) {
            addCriterion("cou_img not like", value, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgIn(List<String> values) {
            addCriterion("cou_img in", values, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgNotIn(List<String> values) {
            addCriterion("cou_img not in", values, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgBetween(String value1, String value2) {
            addCriterion("cou_img between", value1, value2, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouImgNotBetween(String value1, String value2) {
            addCriterion("cou_img not between", value1, value2, "couImg");
            return (Criteria) this;
        }

        public Criteria andCouCoachIsNull() {
            addCriterion("cou_coach is null");
            return (Criteria) this;
        }

        public Criteria andCouCoachIsNotNull() {
            addCriterion("cou_coach is not null");
            return (Criteria) this;
        }

        public Criteria andCouCoachEqualTo(String value) {
            addCriterion("cou_coach =", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachNotEqualTo(String value) {
            addCriterion("cou_coach <>", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachGreaterThan(String value) {
            addCriterion("cou_coach >", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachGreaterThanOrEqualTo(String value) {
            addCriterion("cou_coach >=", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachLessThan(String value) {
            addCriterion("cou_coach <", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachLessThanOrEqualTo(String value) {
            addCriterion("cou_coach <=", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachLike(String value) {
            addCriterion("cou_coach like", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachNotLike(String value) {
            addCriterion("cou_coach not like", value, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachIn(List<String> values) {
            addCriterion("cou_coach in", values, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachNotIn(List<String> values) {
            addCriterion("cou_coach not in", values, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachBetween(String value1, String value2) {
            addCriterion("cou_coach between", value1, value2, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouCoachNotBetween(String value1, String value2) {
            addCriterion("cou_coach not between", value1, value2, "couCoach");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeIsNull() {
            addCriterion("cou_begintime is null");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeIsNotNull() {
            addCriterion("cou_begintime is not null");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeEqualTo(Date value) {
            addCriterionForJDBCDate("cou_begintime =", value, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("cou_begintime <>", value, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeGreaterThan(Date value) {
            addCriterionForJDBCDate("cou_begintime >", value, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("cou_begintime >=", value, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeLessThan(Date value) {
            addCriterionForJDBCDate("cou_begintime <", value, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("cou_begintime <=", value, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeIn(List<Date> values) {
            addCriterionForJDBCDate("cou_begintime in", values, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("cou_begintime not in", values, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("cou_begintime between", value1, value2, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouBegintimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("cou_begintime not between", value1, value2, "couBegintime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeIsNull() {
            addCriterion("cou_endtime is null");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeIsNotNull() {
            addCriterion("cou_endtime is not null");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeEqualTo(Date value) {
            addCriterionForJDBCDate("cou_endtime =", value, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("cou_endtime <>", value, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeGreaterThan(Date value) {
            addCriterionForJDBCDate("cou_endtime >", value, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("cou_endtime >=", value, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeLessThan(Date value) {
            addCriterionForJDBCDate("cou_endtime <", value, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("cou_endtime <=", value, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeIn(List<Date> values) {
            addCriterionForJDBCDate("cou_endtime in", values, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("cou_endtime not in", values, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("cou_endtime between", value1, value2, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouEndtimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("cou_endtime not between", value1, value2, "couEndtime");
            return (Criteria) this;
        }

        public Criteria andCouAdressIsNull() {
            addCriterion("cou_adress is null");
            return (Criteria) this;
        }

        public Criteria andCouAdressIsNotNull() {
            addCriterion("cou_adress is not null");
            return (Criteria) this;
        }

        public Criteria andCouAdressEqualTo(String value) {
            addCriterion("cou_adress =", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressNotEqualTo(String value) {
            addCriterion("cou_adress <>", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressGreaterThan(String value) {
            addCriterion("cou_adress >", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressGreaterThanOrEqualTo(String value) {
            addCriterion("cou_adress >=", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressLessThan(String value) {
            addCriterion("cou_adress <", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressLessThanOrEqualTo(String value) {
            addCriterion("cou_adress <=", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressLike(String value) {
            addCriterion("cou_adress like", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressNotLike(String value) {
            addCriterion("cou_adress not like", value, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressIn(List<String> values) {
            addCriterion("cou_adress in", values, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressNotIn(List<String> values) {
            addCriterion("cou_adress not in", values, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressBetween(String value1, String value2) {
            addCriterion("cou_adress between", value1, value2, "couAdress");
            return (Criteria) this;
        }

        public Criteria andCouAdressNotBetween(String value1, String value2) {
            addCriterion("cou_adress not between", value1, value2, "couAdress");
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