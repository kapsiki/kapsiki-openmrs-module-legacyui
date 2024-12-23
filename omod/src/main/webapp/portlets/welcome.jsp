<%@ include file="/WEB-INF/view/module/legacyui/template/include.jsp" %>
<openmrs:globalProperty
  var="applicationName"
  key="application.name"
  defaultValue="Kapsiki Healthcare ADMIN INTERFACE"
/>
<c:choose>
  <c:when test="${model.authenticatedUser != null}">
    <c:choose>
      <c:when test="${model.showName != 'false'}">
        Welcome to Kapsiki Healthcare ADMIN INTERFACE
      </c:when>
      <c:otherwise> Welcome to Kapsiki Healthcare ADMIN INTERFACE </c:otherwise>
    </c:choose>
    <c:if test="${model.customText != ''}"> ${model.customText} </c:if>
  </c:when>
  <c:otherwise>
    Welcome to Kapsiki Healthcare ADMIN INTERFACE
    <c:if test="${model.showLogin == 'true'}">
      <br />
      <openmrs:portlet url="login" parameters="redirect=${model.redirect}" />
    </c:if>
  </c:otherwise>
</c:choose>
