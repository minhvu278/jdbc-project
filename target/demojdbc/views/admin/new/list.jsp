<%@include file="/common/taglib.jsp" %>
<!-- DataTables Example -->
<div id="wrapper">
    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="index.html">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-fw fa-folder"></i>
                <span>Pages</span>
            </a>
            <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                <h6 class="dropdown-header">Login Screens:</h6>
                <a class="dropdown-item" href="login.html">Login</a>
                <a class="dropdown-item" href="register.html">Register</a>
                <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                <div class="dropdown-divider"></div>
                <h6 class="dropdown-header">Other Pages:</h6>
                <a class="dropdown-item" href="404.html">404 Page</a>
                <a class="dropdown-item" href="blank.html">Blank Page</a>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="charts.html">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Charts</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<c:url value='/admin-new-list'/>">
                <i class="fas fa-fw fa-table"></i>
                <span>Tables</span></a>
        </li>
    </ul>
    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- Breadcrumbs-->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="#">Dashboard</a>
                </li>
                <li class="breadcrumb-item active">Overview</li>
            </ol>
            <!-- DataTables Example -->
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    Data Table Example
                </div>
                <div class="card-body">
                    <div class="table-responsive">
<%--                        <table class="table table-bordered" id="example" width="100%" cellspacing="0">--%>
<%--                            <thead>--%>
<%--                            <tr>--%>
<%--                                <th>Tên bài viết</th>--%>
<%--                                <th>Mô tả ngắn</th>--%>
<%--                            </tr>--%>
<%--                            </thead>--%>
<%--                            <tbody>--%>
<%--                            <c:forEach var="item" items="${model.listResult}">--%>
<%--                                <tr>--%>
<%--                                    <td>${item.title}</td>--%>
<%--                                    <td>${item.shortDescription}</td>--%>
<%--                                </tr>--%>
<%--                            </c:forEach>--%>
<%--                            </tbody>--%>
<%--                        </table>--%>
    <table id="simple-table" class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace" />
                    <span class="lbl"></span>
                </label>
            </th>
            <th>Domain</th>
            <th>Price</th>
            <th class="hidden-480">Clicks</th>

            <th>
                <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                Update
            </th>
            <th class="hidden-480">Status</th>

            <th></th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <td class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace" />
                    <span class="lbl"></span>
                </label>
            </td>

            <td>
                <a href="#">ace.com</a>
            </td>
            <td>$45</td>
            <td class="hidden-480">3,330</td>
            <td>Feb 12</td>

            <td class="hidden-480">
                <span class="label label-sm label-warning">Expiring</span>
            </td>

            <td>
                <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success">
                        <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-info">
                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-danger">
                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-warning">
                        <i class="ace-icon fa fa-flag bigger-120"></i>
                    </button>
                </div>

                <div class="hidden-md hidden-lg">
                    <div class="inline pos-rel">
                        <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                            <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                        </button>

                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                            <li>
                                <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>

        <tr>
            <td class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace" />
                    <span class="lbl"></span>
                </label>
            </td>

            <td>
                <a href="#">base.com</a>
            </td>
            <td>$35</td>
            <td class="hidden-480">2,595</td>
            <td>Feb 18</td>

            <td class="hidden-480">
                <span class="label label-sm label-success">Registered</span>
            </td>

            <td>
                <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success">
                        <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-info">
                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-danger">
                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-warning">
                        <i class="ace-icon fa fa-flag bigger-120"></i>
                    </button>
                </div>

                <div class="hidden-md hidden-lg">
                    <div class="inline pos-rel">
                        <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                            <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                        </button>

                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                            <li>
                                <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>

        <tr>
            <td class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace" />
                    <span class="lbl"></span>
                </label>
            </td>

            <td>
                <a href="#">max.com</a>
            </td>
            <td>$60</td>
            <td class="hidden-480">4,400</td>
            <td>Mar 11</td>

            <td class="hidden-480">
                <span class="label label-sm label-warning">Expiring</span>
            </td>

            <td>
                <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success">
                        <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-info">
                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-danger">
                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-warning">
                        <i class="ace-icon fa fa-flag bigger-120"></i>
                    </button>
                </div>

                <div class="hidden-md hidden-lg">
                    <div class="inline pos-rel">
                        <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                            <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                        </button>

                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                            <li>
                                <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>

        <tr>
            <td class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace" />
                    <span class="lbl"></span>
                </label>
            </td>

            <td>
                <a href="#">best.com</a>
            </td>
            <td>$75</td>
            <td class="hidden-480">6,500</td>
            <td>Apr 03</td>

            <td class="hidden-480">
                <span class="label label-sm label-inverse arrowed-in">Flagged</span>
            </td>

            <td>
                <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success">
                        <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-info">
                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-danger">
                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-warning">
                        <i class="ace-icon fa fa-flag bigger-120"></i>
                    </button>
                </div>

                <div class="hidden-md hidden-lg">
                    <div class="inline pos-rel">
                        <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                            <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                        </button>

                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                            <li>
                                <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>

        <tr>
            <td class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace" />
                    <span class="lbl"></span>
                </label>
            </td>

            <td>
                <a href="#">pro.com</a>
            </td>
            <td>$55</td>
            <td class="hidden-480">4,250</td>
            <td>Jan 21</td>

            <td class="hidden-480">
                <span class="label label-sm label-success">Registered</span>
            </td>

            <td>
                <div class="hidden-sm hidden-xs btn-group">
                    <button class="btn btn-xs btn-success">
                        <i class="ace-icon fa fa-check bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-info">
                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-danger">
                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                    </button>

                    <button class="btn btn-xs btn-warning">
                        <i class="ace-icon fa fa-flag bigger-120"></i>
                    </button>
                </div>

                <div class="hidden-md hidden-lg">
                    <div class="inline pos-rel">
                        <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                            <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                        </button>

                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                            <li>
                                <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
                        <ul class="pagination" id="pagination"></ul>
                    </div>
                </div>
                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                <script type="text/javascript">
                    $(function () {
                        var table = $('#example').DataTable({
                            "paging": false
                        });
                        window.pagObj = $('#pagination').twbsPagination({
                            totalPages: 10,
                            visiblePages: 5,
                            startPage:4,
                            onPageClick: function (event, page) {
                                console.info(page + ' (from options)');
                            }
                        }).on('page', function (event, page) {
                            console.info(page + ' (from event listening)');
                        });
                    });
                </script>
            </div>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->


    </div>
    <!-- /.content-wrapper -->
</div>
