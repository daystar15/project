<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container w-75">
	
	<div class="d-flex justify-content-end">
		<form class="d-flex w-50">
	    	<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-success" type="submit">Search</button>
	    </form>
    </div>
    
	<div class="">
		<h1 class="mt-5 mb-5">주문 리스트</h1>
		<table class="table">
			<caption class="d-none">List of users</caption>
			<thead>
			    <tr>
			      <th scope="col" class="text-center">주문번호</th>
			      <th scope="col" class="text-center">주문날짜</th>
			      <th scope="col" class="text-center">거래처</th>
			      <th scope="col" class="text-center">주문수량</th>
			      <th scope="col" class="text-center">주문금액</th>
			      <th scope="col" class="text-center">상세</th>
			    </tr>
			  </thead>
			  <tbody class="table-group-divider">
			  	<%-- <c:forEach var="order" items="${orderList}">--%>
				    <tr class="text-center">
				      <th scope="row" class="align-middle">123132</th>
				      <td class="align-middle">2024년 5월 31일</td>
				      <td class="align-middle">00상사</td>
				      <td class="align-middle">10</td>
				      <td class="align-middle">100,000</td>
				      <td class="align-middle">
				      	<button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal">상세</button>
				      </td>
				    </tr>
				<%-- </c:forEach>--%>
			  </tbody>
		</table>
	</div>
	
	
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<script>
	var myModal = document.getElementById('exampleModal')
	
	myModal.addEventListener('shown.bs.modal', () => {
		myModal.focus()
	})
</script>
