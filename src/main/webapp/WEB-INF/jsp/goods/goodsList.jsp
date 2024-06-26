<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container w-75 mb-3">
	<div class="d-flex justify-content-end mb-5">
		<form class="d-flex w-50">
	    	<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-success" type="submit">Search</button>
	    </form>
    </div>
    
	<div class="">
		<table class="table">
			<thead>
			    <tr class="text-center">
			      <th scope="col" class="text-center">상품ID</th>
			      <th scope="col" class="text-center">상품이름</th>
			      <th scope="col" class="text-center">상품가격</th>
			      <th scope="col" class="text-center">상품정보</th>
			      <th scope="col" class="text-center">선택</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="goods" items="${goodsList}">
				    <tr class="text-center">
				      <th scope="row" class="align-middle">${goods.goods_id}</th>
				      <td class="align-middle">${goods.goods_name}</td>
				      <td class="align-middle">${goods.goods_price}</td>
				      <td class="align-middle">${goods.goods_info}</td>
				      <td><button type="button" class="btn btn-primary"><a href="/order_view" style="color: white; text-decoration-line: none;">선택</a></button></td>
				    </tr>
				</c:forEach>
			    
			  </tbody>
		</table>
	</div>
</div>
