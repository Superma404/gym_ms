package com.pdsxy.mj.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class MessageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MessageExample() {
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

        public Criteria andMeIdIsNull() {
            addCriterion("me_id is null");
            return (Criteria) this;
        }

        public Criteria andMeIdIsNotNull() {
            addCriterion("me_id is not null");
            return (Criteria) this;
        }

        public Criteria andMeIdEqualTo(Integer value) {
            addCriterion("me_id =", value, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdNotEqualTo(Integer value) {
            addCriterion("me_id <>", value, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdGreaterThan(Integer value) {
            addCriterion("me_id >", value, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("me_id >=", value, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdLessThan(Integer value) {
            addCriterion("me_id <", value, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdLessThanOrEqualTo(Integer value) {
            addCriterion("me_id <=", value, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdIn(List<Integer> values) {
            addCriterion("me_id in", values, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdNotIn(List<Integer> values) {
            addCriterion("me_id not in", values, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdBetween(Integer value1, Integer value2) {
            addCriterion("me_id between", value1, value2, "meId");
            return (Criteria) this;
        }

        public Criteria andMeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("me_id not between", value1, value2, "meId");
            return (Criteria) this;
        }

        public Criteria andMeAuthorIsNull() {
            addCriterion("me_author is null");
            return (Criteria) this;
        }

        public Criteria andMeAuthorIsNotNull() {
            addCriterion("me_author is not null");
            return (Criteria) this;
        }

        public Criteria andMeAuthorEqualTo(String value) {
            addCriterion("me_author =", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorNotEqualTo(String value) {
            addCriterion("me_author <>", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorGreaterThan(String value) {
            addCriterion("me_author >", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("me_author >=", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorLessThan(String value) {
            addCriterion("me_author <", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorLessThanOrEqualTo(String value) {
            addCriterion("me_author <=", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorLike(String value) {
            addCriterion("me_author like", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorNotLike(String value) {
            addCriterion("me_author not like", value, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorIn(List<String> values) {
            addCriterion("me_author in", values, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorNotIn(List<String> values) {
            addCriterion("me_author not in", values, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorBetween(String value1, String value2) {
            addCriterion("me_author between", value1, value2, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeAuthorNotBetween(String value1, String value2) {
            addCriterion("me_author not between", value1, value2, "meAuthor");
            return (Criteria) this;
        }

        public Criteria andMeContentIsNull() {
            addCriterion("me_content is null");
            return (Criteria) this;
        }

        public Criteria andMeContentIsNotNull() {
            addCriterion("me_content is not null");
            return (Criteria) this;
        }

        public Criteria andMeContentEqualTo(String value) {
            addCriterion("me_content =", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentNotEqualTo(String value) {
            addCriterion("me_content <>", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentGreaterThan(String value) {
            addCriterion("me_content >", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentGreaterThanOrEqualTo(String value) {
            addCriterion("me_content >=", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentLessThan(String value) {
            addCriterion("me_content <", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentLessThanOrEqualTo(String value) {
            addCriterion("me_content <=", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentLike(String value) {
            addCriterion("me_content like", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentNotLike(String value) {
            addCriterion("me_content not like", value, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentIn(List<String> values) {
            addCriterion("me_content in", values, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentNotIn(List<String> values) {
            addCriterion("me_content not in", values, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentBetween(String value1, String value2) {
            addCriterion("me_content between", value1, value2, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeContentNotBetween(String value1, String value2) {
            addCriterion("me_content not between", value1, value2, "meContent");
            return (Criteria) this;
        }

        public Criteria andMeImgIsNull() {
            addCriterion("me_img is null");
            return (Criteria) this;
        }

        public Criteria andMeImgIsNotNull() {
            addCriterion("me_img is not null");
            return (Criteria) this;
        }

        public Criteria andMeImgEqualTo(String value) {
            addCriterion("me_img =", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgNotEqualTo(String value) {
            addCriterion("me_img <>", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgGreaterThan(String value) {
            addCriterion("me_img >", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgGreaterThanOrEqualTo(String value) {
            addCriterion("me_img >=", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgLessThan(String value) {
            addCriterion("me_img <", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgLessThanOrEqualTo(String value) {
            addCriterion("me_img <=", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgLike(String value) {
            addCriterion("me_img like", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgNotLike(String value) {
            addCriterion("me_img not like", value, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgIn(List<String> values) {
            addCriterion("me_img in", values, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgNotIn(List<String> values) {
            addCriterion("me_img not in", values, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgBetween(String value1, String value2) {
            addCriterion("me_img between", value1, value2, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeImgNotBetween(String value1, String value2) {
            addCriterion("me_img not between", value1, value2, "meImg");
            return (Criteria) this;
        }

        public Criteria andMeTimeIsNull() {
            addCriterion("me_time is null");
            return (Criteria) this;
        }

        public Criteria andMeTimeIsNotNull() {
            addCriterion("me_time is not null");
            return (Criteria) this;
        }

        public Criteria andMeTimeEqualTo(Date value) {
            addCriterionForJDBCDate("me_time =", value, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("me_time <>", value, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("me_time >", value, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("me_time >=", value, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeLessThan(Date value) {
            addCriterionForJDBCDate("me_time <", value, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("me_time <=", value, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeIn(List<Date> values) {
            addCriterionForJDBCDate("me_time in", values, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("me_time not in", values, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("me_time between", value1, value2, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("me_time not between", value1, value2, "meTime");
            return (Criteria) this;
        }

        public Criteria andMeStatusIsNull() {
            addCriterion("me_status is null");
            return (Criteria) this;
        }

        public Criteria andMeStatusIsNotNull() {
            addCriterion("me_status is not null");
            return (Criteria) this;
        }

        public Criteria andMeStatusEqualTo(Integer value) {
            addCriterion("me_status =", value, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusNotEqualTo(Integer value) {
            addCriterion("me_status <>", value, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusGreaterThan(Integer value) {
            addCriterion("me_status >", value, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("me_status >=", value, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusLessThan(Integer value) {
            addCriterion("me_status <", value, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusLessThanOrEqualTo(Integer value) {
            addCriterion("me_status <=", value, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusIn(List<Integer> values) {
            addCriterion("me_status in", values, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusNotIn(List<Integer> values) {
            addCriterion("me_status not in", values, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusBetween(Integer value1, Integer value2) {
            addCriterion("me_status between", value1, value2, "meStatus");
            return (Criteria) this;
        }

        public Criteria andMeStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("me_status not between", value1, value2, "meStatus");
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