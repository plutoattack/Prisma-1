<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Insert title here</title>
</head>

<body>
<div class="body">success of ${documentUrl} upload
    <a href="${resource(dir: '/pdf/', file: "${documentUrl}")}" target="_blank">show</a>
</div>
</body>
</html>