<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <spring:message code="title_main"/>
    <%@ include file="/WEB-INF/pages/modules/work.jsp" %>
</head>
<loc id="bg" class="login">
    <jsp:include page="/WEB-INF/pages/modules/menu/language_menu.jsp"/>
</loc>
<body>
<hgroup>
    <%@ include file="/WEB-INF/pages/modules/slogan.jsp" %>
</hgroup>
<nav>
    <%@ include file="/WEB-INF/pages/modules/menu/client_menu.jsp" %>
</nav>
<section id="bg" class="overlay">
    <div>
        <%@ include file="/WEB-INF/pages/modules/menu/profile_menu.jsp" %>
    </div>
</section>
<inbody>
    <div>
        <s:form method="POST" action="change_data" modelAttribute="client">
            <spring:message code="context_edit_data"/><br/><br/>

            <spring:message code="client_name"/>:
            <s:input type="text" path="name" name="name" value="${client.name}" size="20"/>
            <sf:errors path="name" cssClass="error-validation"/><br/>

            <spring:message code="client_sur_name"/>:
            <s:input type="text" path="surname" name="surname" value="${client.surname}" size="20"/>
            <sf:errors path="surname" cssClass="error-validation"/><br/>

            <spring:message code="client_email"/>:
            <s:input type="text" path="email" name="email" value="${client.email}" size="20"/>
            <sf:errors path="email" cssClass="error-validation"/><br/>

            <spring:message code="client_password"/>:
            <s:input type="text" path="password" name="password" value="${client.password}" size="20"/>
            <sf:errors path="password" cssClass="error-validation"/><br/>

            <spring:message code="client_phone"/>:
            <s:input type="text" path="phone" name="phone" value="${client.phone}" size="20"/>
            <sf:errors path="phone" cssClass="error-validation"/><br/>

            <s:input type="hidden" path="passports.id" value="${client.passports.id}"/>

            <spring:message code="client_passport"/>:
            <s:input type="text" path="passports.passport" name="passport" value="${client.passports.passport}"
                     size="20"/>
            ${passport_error}<br/>

            <spring:message code="client_passport_start"/>:
            ${exception_null_date}
            <s:input type="text" name="passportIssueDate" class="tcal" path="passports.passportIssueDate"
                     value="${client.passports.passportIssueDate}"/>
            ${date_error}<br/>

            <spring:message code="client_passport_end"/>:
            ${exception_null_date}
            <s:input type="text" name="passportEndDate" class="tcal" path="passports.passportEndDate"
                     value="${client.passports.passportEndDate}"/>
            ${date_error}<br/>
            <input type="submit" value="<spring:message code="change_data"/>"/>
        </s:form>
    </div>
</inbody>
</body>
</html>
