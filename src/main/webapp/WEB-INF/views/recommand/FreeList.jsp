<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<style>
	tr{
		color : black;
	}
</style>
<div class="container">
	<div>
		<h1>자유 게시판</h1>
	</div>
	<br/>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse">
	      <ul class="nav navbar-nav">
	        <li><a href="#">일반</a></li>
	        <li><a href="#">리뷰</a></li>
	        <li><a href="#">정보</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">정렬 <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	            <li><a href="#">최신순</a></li>
	            <li><a href="#">추천순</a></li>
	          </ul>
	        </li>
	      </ul>
	      <form class="navbar-form navbar-right" method="post" action="/recommandList.do">
	        <div class="form-group">
				<select name="searchColumn" class="form-control">
					<option value="title">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
			</div>
	        <div class="form-group">
	          <input type="text" name="searchWord" class="form-control" placeholder="검색">
	        </div>
	        <button type="submit" class="btn btn-default" onclick="submit()">검색</button>
	      </form>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div class="table-responsive" style="overflow:hidden;">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" class="col-md-1 text-center">Category</th>
					<th scope="col" class="col-md-2 text-center">Title</th>
					<th scope="col" class="col-md-1 text-center">Writer</th>
					<th scope="col" class="col-md-1 text-center">PostDate</th>
					<th scope="col" class="col-md-1 text-center">LikeCount</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty listPagingData.lists }" var="isEmpty">
					<tr>
						<td colspan="4" style="text-align: center;">등록된 게시물이 없어요</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty }">
					<c:forEach var="item" items="${listPagingData.lists}" varStatus="loop">
						<tr class="text-center">
							<td>
								<c:if test="${item.navcategory=='freeNormal'}"><span>일반</span></c:if>
								<c:if test="${item.navcategory=='freeReview'}"><span>리뷰</span></c:if>
								<c:if test="${item.navcategory=='freeInfo'}"><span>정보</span></c:if>
							</td>
							<td class="text-left">
								<a href="<c:url value="/recommandView.do?ussrno=${item.ussrno}&nowPage="/><c:out value="${param.nowPage }" default="1"/>">${item.ussrtitle }
								<span class="badge">${item.commentCount }</span></a>
							</td>
							<td class="text-center">${item.nickname}</td>
							<td class="text-center">${item.ussrpostdate}</td>
							<td class="text-center">${item.likeno}</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>

		<a class="btn btn-default pull-right"
			href="<c:url value='/recommandWrite.do'/>">글쓰기</a>

		<div class="text-center">
			<!-- 페이징 -->
			<c:if test="${listPagingData.lists.size() !=0 }">
				<div class="row">
					<div class="col-md-12 text-center">${listPagingData.pagingString}</div>
				</div>
			</c:if>
		</div>
	</div>
</div>