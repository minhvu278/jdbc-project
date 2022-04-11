<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value='/template/admin/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">

    <!-- Page level plugin CSS-->
    <link href="<c:url value='/template/admin/vendor/datatables/dataTables.bootstrap4.css'/>" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value='/template/admin/css/sb-admin.css'/>" rel="stylesheet">
</head>
<body id="page-top">

<%@ include file="/common/admin/header.jsp" %>
<%--    <%@ include file="/common/admin/menu.jsp" %>--%>
    <dec:body/>
    <%@ include file="/common/admin/footer.jsp" %>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value='/template/admin/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value='/template/admin/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

<!-- Page level plugin JavaScript-->
<%--<script src="<c:url value='/template/admin/vendor/chart.js/Chart.min.js'/>"></script>--%>
<script src="<c:url value='/template/admin/vendor/datatables/jquery.dataTables.js'/>" defer></script>
<script src="<c:url value='/template/admin/vendor/datatables/dataTables.bootstrap4.js'/>" defer></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value='/template/admin/js/sb-admin.min.js'/>"></script>

<!-- Demo scripts for this page-->
<script src="<c:url value='/template/admin/js/demo/datatables-demo.js'/>" defer></script>
<%--<script src="<c:url value='/template/admin/js/demo/chart-area-demo.js'/>"></script>--%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<script src="<c:url value='/template/paging/jquery.twbsPagination.js'/>" defer type="text/javascript"></script>
<%--<script src="http://code.jquery.com/jquery-1.10.2.js"></script>--%>
<%--<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>--%>
<%--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>

</body>
</html>
