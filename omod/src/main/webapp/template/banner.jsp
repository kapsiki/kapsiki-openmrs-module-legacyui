<div id="banner" xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:spring="http://www.springframework.org/tags"
	xmlns:openmrs="urn:jsptld:/WEB-INF/view/module/legacyui/taglibs/openmrs.tld">
<!-- <a href="<%= request.getContextPath() %><spring:theme code="url.homepage" />">
  <div id="logosmall"><img src="<%= request.getContextPath() %><spring:theme code="image.logo.text.small" />" alt="OpenMRS Logo" border="0"/></div>
</a>   -->
<table id="bannerbar">
  <tr>
    <td id="logocell"> <img src="<%= request.getContextPath() %><spring:theme code="image.logo.small" />" alt="" class="logo-reduced61" />
    </td>
	<td id="barcell">
        <div class="barsmall" id="barsmall">
        <img align="left" src="<%= request.getContextPath() %><spring:theme code="image.logo.bar" />" alt="" class="bar-round-reduced50" id="bar-round-reduced50"/>
         <openmrs:hasPrivilege privilege="View Navigation Menu">
 				<%@ include file="/WEB-INF/view/module/legacyui/template/gutter.jsp" %>
 		</openmrs:hasPrivilege>
         </div>
        <script type="text/javascript">
          document.addEventListener('DOMContentLoaded', function() {
            document.title = "Kapsiki Healthcare";
            try {
                const dropdown = document.querySelector("#userBar")

const elements = Array.from(dropdown.children)

dropdown.classList.add("dropdown")

elements.forEach(e => e.classList.add("dropdown-element"))

const dropdownHandler = document.createElement('div')

dropdownHandler.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="28" height="28" color="#aaaaaa" fill="none">
    <path d="M11.9959 18H12.0049" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M17.9998 18H18.0088" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M5.99981 18H6.00879" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M11.9959 12H12.0049" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M11.9998 6H12.0088" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M17.9998 12H18.0088" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M17.9998 6H18.0088" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M5.99981 12H6.00879" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    <path d="M5.99981 6H6.00879" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
</svg>`
dropdownHandler.onclick = () => {
    elements.forEach(e => e.classList.toggle("visible"))
} 

dropdown.appendChild(dropdownHandler)

            } catch (error) {
              
            }
          })
        	function resize(){
			document.getElementById('bar-round-reduced50').style.height = document.getElementById('barsmall').offsetHeight+"px";
        	}
        	window.onload=resize;
			window.onresize=resize;
		</script>
        </div>
    </td>
  </tr>
</table>
</div>
