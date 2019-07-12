package com.pdsxy.mj.bean;

import java.util.ArrayList;
import java.util.List;

public class UserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserExample() {
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

        public Criteria andUsIdIsNull() {
            addCriterion("us_id is null");
            return (Criteria) this;
        }

        public Criteria andUsIdIsNotNull() {
            addCriterion("us_id is not null");
            return (Criteria) this;
        }

        public Criteria andUsIdEqualTo(Integer value) {
            addCriterion("us_id =", value, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdNotEqualTo(Integer value) {
            addCriterion("us_id <>", value, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdGreaterThan(Integer value) {
            addCriterion("us_id >", value, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("us_id >=", value, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdLessThan(Integer value) {
            addCriterion("us_id <", value, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdLessThanOrEqualTo(Integer value) {
            addCriterion("us_id <=", value, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdIn(List<Integer> values) {
            addCriterion("us_id in", values, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdNotIn(List<Integer> values) {
            addCriterion("us_id not in", values, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdBetween(Integer value1, Integer value2) {
            addCriterion("us_id between", value1, value2, "usId");
            return (Criteria) this;
        }

        public Criteria andUsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("us_id not between", value1, value2, "usId");
            return (Criteria) this;
        }

        public Criteria andUsNameIsNull() {
            addCriterion("us_name is null");
            return (Criteria) this;
        }

        public Criteria andUsNameIsNotNull() {
            addCriterion("us_name is not null");
            return (Criteria) this;
        }

        public Criteria andUsNameEqualTo(String value) {
            addCriterion("us_name =", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameNotEqualTo(String value) {
            addCriterion("us_name <>", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameGreaterThan(String value) {
            addCriterion("us_name >", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameGreaterThanOrEqualTo(String value) {
            addCriterion("us_name >=", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameLessThan(String value) {
            addCriterion("us_name <", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameLessThanOrEqualTo(String value) {
            addCriterion("us_name <=", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameLike(String value) {
            addCriterion("us_name like", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameNotLike(String value) {
            addCriterion("us_name not like", value, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameIn(List<String> values) {
            addCriterion("us_name in", values, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameNotIn(List<String> values) {
            addCriterion("us_name not in", values, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameBetween(String value1, String value2) {
            addCriterion("us_name between", value1, value2, "usName");
            return (Criteria) this;
        }

        public Criteria andUsNameNotBetween(String value1, String value2) {
            addCriterion("us_name not between", value1, value2, "usName");
            return (Criteria) this;
        }

        public Criteria andUsPasswordIsNull() {
            addCriterion("us_password is null");
            return (Criteria) this;
        }

        public Criteria andUsPasswordIsNotNull() {
            addCriterion("us_password is not null");
            return (Criteria) this;
        }

        public Criteria andUsPasswordEqualTo(String value) {
            addCriterion("us_password =", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordNotEqualTo(String value) {
            addCriterion("us_password <>", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordGreaterThan(String value) {
            addCriterion("us_password >", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("us_password >=", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordLessThan(String value) {
            addCriterion("us_password <", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordLessThanOrEqualTo(String value) {
            addCriterion("us_password <=", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordLike(String value) {
            addCriterion("us_password like", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordNotLike(String value) {
            addCriterion("us_password not like", value, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordIn(List<String> values) {
            addCriterion("us_password in", values, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordNotIn(List<String> values) {
            addCriterion("us_password not in", values, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordBetween(String value1, String value2) {
            addCriterion("us_password between", value1, value2, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsPasswordNotBetween(String value1, String value2) {
            addCriterion("us_password not between", value1, value2, "usPassword");
            return (Criteria) this;
        }

        public Criteria andUsRealnameIsNull() {
            addCriterion("us_realname is null");
            return (Criteria) this;
        }

        public Criteria andUsRealnameIsNotNull() {
            addCriterion("us_realname is not null");
            return (Criteria) this;
        }

        public Criteria andUsRealnameEqualTo(String value) {
            addCriterion("us_realname =", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameNotEqualTo(String value) {
            addCriterion("us_realname <>", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameGreaterThan(String value) {
            addCriterion("us_realname >", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameGreaterThanOrEqualTo(String value) {
            addCriterion("us_realname >=", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameLessThan(String value) {
            addCriterion("us_realname <", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameLessThanOrEqualTo(String value) {
            addCriterion("us_realname <=", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameLike(String value) {
            addCriterion("us_realname like", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameNotLike(String value) {
            addCriterion("us_realname not like", value, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameIn(List<String> values) {
            addCriterion("us_realname in", values, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameNotIn(List<String> values) {
            addCriterion("us_realname not in", values, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameBetween(String value1, String value2) {
            addCriterion("us_realname between", value1, value2, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsRealnameNotBetween(String value1, String value2) {
            addCriterion("us_realname not between", value1, value2, "usRealname");
            return (Criteria) this;
        }

        public Criteria andUsTelIsNull() {
            addCriterion("us_tel is null");
            return (Criteria) this;
        }

        public Criteria andUsTelIsNotNull() {
            addCriterion("us_tel is not null");
            return (Criteria) this;
        }

        public Criteria andUsTelEqualTo(String value) {
            addCriterion("us_tel =", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelNotEqualTo(String value) {
            addCriterion("us_tel <>", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelGreaterThan(String value) {
            addCriterion("us_tel >", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelGreaterThanOrEqualTo(String value) {
            addCriterion("us_tel >=", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelLessThan(String value) {
            addCriterion("us_tel <", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelLessThanOrEqualTo(String value) {
            addCriterion("us_tel <=", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelLike(String value) {
            addCriterion("us_tel like", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelNotLike(String value) {
            addCriterion("us_tel not like", value, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelIn(List<String> values) {
            addCriterion("us_tel in", values, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelNotIn(List<String> values) {
            addCriterion("us_tel not in", values, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelBetween(String value1, String value2) {
            addCriterion("us_tel between", value1, value2, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsTelNotBetween(String value1, String value2) {
            addCriterion("us_tel not between", value1, value2, "usTel");
            return (Criteria) this;
        }

        public Criteria andUsEmlIsNull() {
            addCriterion("us_eml is null");
            return (Criteria) this;
        }

        public Criteria andUsEmlIsNotNull() {
            addCriterion("us_eml is not null");
            return (Criteria) this;
        }

        public Criteria andUsEmlEqualTo(String value) {
            addCriterion("us_eml =", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlNotEqualTo(String value) {
            addCriterion("us_eml <>", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlGreaterThan(String value) {
            addCriterion("us_eml >", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlGreaterThanOrEqualTo(String value) {
            addCriterion("us_eml >=", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlLessThan(String value) {
            addCriterion("us_eml <", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlLessThanOrEqualTo(String value) {
            addCriterion("us_eml <=", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlLike(String value) {
            addCriterion("us_eml like", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlNotLike(String value) {
            addCriterion("us_eml not like", value, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlIn(List<String> values) {
            addCriterion("us_eml in", values, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlNotIn(List<String> values) {
            addCriterion("us_eml not in", values, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlBetween(String value1, String value2) {
            addCriterion("us_eml between", value1, value2, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsEmlNotBetween(String value1, String value2) {
            addCriterion("us_eml not between", value1, value2, "usEml");
            return (Criteria) this;
        }

        public Criteria andUsStatusIsNull() {
            addCriterion("us_status is null");
            return (Criteria) this;
        }

        public Criteria andUsStatusIsNotNull() {
            addCriterion("us_status is not null");
            return (Criteria) this;
        }

        public Criteria andUsStatusEqualTo(Integer value) {
            addCriterion("us_status =", value, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusNotEqualTo(Integer value) {
            addCriterion("us_status <>", value, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusGreaterThan(Integer value) {
            addCriterion("us_status >", value, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("us_status >=", value, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusLessThan(Integer value) {
            addCriterion("us_status <", value, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusLessThanOrEqualTo(Integer value) {
            addCriterion("us_status <=", value, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusIn(List<Integer> values) {
            addCriterion("us_status in", values, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusNotIn(List<Integer> values) {
            addCriterion("us_status not in", values, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusBetween(Integer value1, Integer value2) {
            addCriterion("us_status between", value1, value2, "usStatus");
            return (Criteria) this;
        }

        public Criteria andUsStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("us_status not between", value1, value2, "usStatus");
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