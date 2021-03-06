<%@ page import="prisma.Decision_ext" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName"
           value="${message(code: 'decision_ext.label', default: 'Decision_ext')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-decision_ext" class="skip" tabindex="-1"><g:message
        code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message
                code="default.home.label"/></a></li>
        <li><g:link class="list" action="list">
            <g:message code="default.list.label" args="[entityName]"/>
        </g:link></li>
        <li><g:link class="create" action="create">
            <g:message code="default.new.label" args="[entityName]"/>
        </g:link></li>
    </ul>
</div>

<div id="show-decision_ext" class="content scaffold-show" role="main">
    <h1>
        <g:message code="default.show.label" args="[entityName]"/>
    </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">
            ${flash.message}
        </div>
    </g:if>
    <ol class="property-list decision_ext">

        <g:if test="${decision_extInstance?.extra}">
            <li class="fieldcontain"><span id="extra-label"
                                           class="property-label"><g:message
                        code="decision_ext.extra.label" default="Extra"/></span> <span
                    class="property-value" aria-labelledby="extra-label"><g:link
                        controller="extra" action="show"
                        id="${decision_extInstance?.extra?.id}">
                    ${decision_extInstance?.extra}
                </g:link></span></li>
        </g:if>

        <g:if test="${decision_extInstance?.decision}">
            <li class="fieldcontain"><span id="decision-label"
                                           class="property-label"><g:message
                        code="decision_ext.decision.label" default="Decision"/></span> <span
                    class="property-value" aria-labelledby="decision-label"><g:link
                        controller="decision" action="show"
                        id="${decision_extInstance?.decision?.id}">
                    ${decision_extInstance?.decision}
                </g:link></span></li>
        </g:if>

        <g:if test="${decision_extInstance?.value}">
            <li class="fieldcontain"><span id="value-label"
                                           class="property-label"><g:message
                        code="decision_ext.value.label" default="Value"/></span> <span
                    class="property-value" aria-labelledby="value-label"><g:fieldValue
                        bean="${decision_extInstance}" field="value"/></span></li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${decision_extInstance?.id}"/>
            <g:link class="edit" action="edit" id="${decision_extInstance?.id}">
                <g:message code="default.button.edit.label" default="Edit"/>
            </g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
