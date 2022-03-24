<%@ include file="/common/taglib.jsp" %>
<!-- DataTables Example -->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-table"></i>
        Data Table Example</div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Tên bài viết</th>
                    <th>Mô tả ngắn</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${model.listResult}">
                    <tr>
                        <td>${item.title}</td>
                        <td>${item.shortDescription}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
</div>