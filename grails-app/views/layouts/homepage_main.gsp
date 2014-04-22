<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <title>Prisma | Spydi2kod</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <link
            href='http://fonts.googleapis.com/css?family=Ubuntu&subset=latin,greek,greek-ext'
            rel='stylesheet' type='text/css'>
    <link rel="shortcut icon"
          href="${resource(dir: 'images', file: 'favicon.ico')}"
          type="image/x-icon">
    <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet"
          type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css"
          href="${resource(dir: 'css', file: 'imgeffect.css')}"/>

    <link rel="stylesheet" type="text/css"
          href="${resource(dir: 'css', file: 'table.css')}"/>

    <!-- Add fancyBox main CSS files -->
    <link href="${resource(dir: 'css', file: 'magnific-popup.css')}"
          rel="stylesheet" type="text/css">



    <!----end gallery-------->


    <g:javascript library="jquery"/>

    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<g:layoutBody/>


<!----start-footer---------->
<div class="footer-bottom">

    <g:render template="/common/footer"/>

</div>
<!------end-footer------------>

<g:render template="/common/scrollToTop"/>
<script src="${resource(dir: 'js', file: 'jquery.min.js')}"></script>
<!-- start gallery Script -->
<script type="text/javascript"
        src="${resource(dir: 'js', file: 'jquery.easing.min.js')}"></script>
<script type="text/javascript"
        src="${resource(dir: 'js', file: 'jquery.mixitup.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'functions.js')}"></script>
<script type="text/javascript"
        src="${resource(dir: 'js', file: 'move-top.js')}"></script>
<script type="text/javascript"
        src="${resource(dir: 'js', file: 'easing.js')}"></script>
<!-- Add fancyBox main JS -->
<script src="${resource(dir: 'js', file: 'jquery.magnific-popup.js')}"
        type="text/javascript"></script>
<g:javascript library="application"/>
<r:layoutResources/>
</body>

</html>
