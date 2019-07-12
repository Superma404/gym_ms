package com.pdsxy.mj.bean;

import java.util.ArrayList;
import java.util.List;

public class InstrumentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public InstrumentExample() {
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

        public Criteria andInsIdIsNull() {
            addCriterion("ins_id is null");
            return (Criteria) this;
        }

        public Criteria andInsIdIsNotNull() {
            addCriterion("ins_id is not null");
            return (Criteria) this;
        }

        public Criteria andInsIdEqualTo(Integer value) {
            addCriterion("ins_id =", value, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdNotEqualTo(Integer value) {
            addCriterion("ins_id <>", value, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdGreaterThan(Integer value) {
            addCriterion("ins_id >", value, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ins_id >=", value, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdLessThan(Integer value) {
            addCriterion("ins_id <", value, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdLessThanOrEqualTo(Integer value) {
            addCriterion("ins_id <=", value, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdIn(List<Integer> values) {
            addCriterion("ins_id in", values, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdNotIn(List<Integer> values) {
            addCriterion("ins_id not in", values, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdBetween(Integer value1, Integer value2) {
            addCriterion("ins_id between", value1, value2, "insId");
            return (Criteria) this;
        }

        public Criteria andInsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ins_id not between", value1, value2, "insId");
            return (Criteria) this;
        }

        public Criteria andInsNameIsNull() {
            addCriterion("ins_name is null");
            return (Criteria) this;
        }

        public Criteria andInsNameIsNotNull() {
            addCriterion("ins_name is not null");
            return (Criteria) this;
        }

        public Criteria andInsNameEqualTo(String value) {
            addCriterion("ins_name =", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameNotEqualTo(String value) {
            addCriterion("ins_name <>", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameGreaterThan(String value) {
            addCriterion("ins_name >", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameGreaterThanOrEqualTo(String value) {
            addCriterion("ins_name >=", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameLessThan(String value) {
            addCriterion("ins_name <", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameLessThanOrEqualTo(String value) {
            addCriterion("ins_name <=", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameLike(String value) {
            addCriterion("ins_name like", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameNotLike(String value) {
            addCriterion("ins_name not like", value, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameIn(List<String> values) {
            addCriterion("ins_name in", values, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameNotIn(List<String> values) {
            addCriterion("ins_name not in", values, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameBetween(String value1, String value2) {
            addCriterion("ins_name between", value1, value2, "insName");
            return (Criteria) this;
        }

        public Criteria andInsNameNotBetween(String value1, String value2) {
            addCriterion("ins_name not between", value1, value2, "insName");
            return (Criteria) this;
        }

        public Criteria andInsUseIsNull() {
            addCriterion("ins_use is null");
            return (Criteria) this;
        }

        public Criteria andInsUseIsNotNull() {
            addCriterion("ins_use is not null");
            return (Criteria) this;
        }

        public Criteria andInsUseEqualTo(String value) {
            addCriterion("ins_use =", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseNotEqualTo(String value) {
            addCriterion("ins_use <>", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseGreaterThan(String value) {
            addCriterion("ins_use >", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseGreaterThanOrEqualTo(String value) {
            addCriterion("ins_use >=", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseLessThan(String value) {
            addCriterion("ins_use <", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseLessThanOrEqualTo(String value) {
            addCriterion("ins_use <=", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseLike(String value) {
            addCriterion("ins_use like", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseNotLike(String value) {
            addCriterion("ins_use not like", value, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseIn(List<String> values) {
            addCriterion("ins_use in", values, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseNotIn(List<String> values) {
            addCriterion("ins_use not in", values, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseBetween(String value1, String value2) {
            addCriterion("ins_use between", value1, value2, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsUseNotBetween(String value1, String value2) {
            addCriterion("ins_use not between", value1, value2, "insUse");
            return (Criteria) this;
        }

        public Criteria andInsStatusIsNull() {
            addCriterion("ins_status is null");
            return (Criteria) this;
        }

        public Criteria andInsStatusIsNotNull() {
            addCriterion("ins_status is not null");
            return (Criteria) this;
        }

        public Criteria andInsStatusEqualTo(Integer value) {
            addCriterion("ins_status =", value, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusNotEqualTo(Integer value) {
            addCriterion("ins_status <>", value, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusGreaterThan(Integer value) {
            addCriterion("ins_status >", value, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("ins_status >=", value, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusLessThan(Integer value) {
            addCriterion("ins_status <", value, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusLessThanOrEqualTo(Integer value) {
            addCriterion("ins_status <=", value, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusIn(List<Integer> values) {
            addCriterion("ins_status in", values, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusNotIn(List<Integer> values) {
            addCriterion("ins_status not in", values, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusBetween(Integer value1, Integer value2) {
            addCriterion("ins_status between", value1, value2, "insStatus");
            return (Criteria) this;
        }

        public Criteria andInsStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("ins_status not between", value1, value2, "insStatus");
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