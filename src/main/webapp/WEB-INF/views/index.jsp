<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@include file="../layout/taglib.jsp" %>
   	<script src="<spring:url value="/resources/js/index.js"/>"></script>
<!-- Full Width Column -->
   <div class="content-wrapper">
    <div class="container">
      <!-- Main content -->
      <section class="content">
       		<div class="row">
          	 <div id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input id="query" type="text" class="search-query form-control" placeholder="Search Url" />
                                <span class="input-group-btn">
                                    <button id="custom-search-click" class="btn btn-primary" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
				</div>
      </section>
      <label id="alt" class="green" for="alt" style="margin-top: 20px;"></label><br>
      <label id="violation" class="red" for="violation"></label>
      <div class="table-responsive">
      <table id="index-table" style="display:none; margin-top: 15px;" class="table table-bordered table-hover table-striped">
			<tbody>
			</tbody>
		</table>
		</div>
		<div id="loader" style="display:none;  margin-left: 374px;">
			<img id="loading-image" src="<spring:url value="/resources/images/loading.gif"/>" alt="Loading..."/>
		</div>
    </div>
  </div>
