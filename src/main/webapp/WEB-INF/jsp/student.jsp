<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<title>学员关系管理系统CRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="../../static/css/bootstrap.min.css" rel="stylesheet">
	<!-- MetisMenu CSS -->
	<link href="../../static/css/metisMenu.min.css" rel="stylesheet">
	<!-- DataTables CSS -->
	<link href="../../static/css/dataTables.bootstrap.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="../../static/css/sb-admin-2.css" rel="stylesheet">
	<!-- Custom Fonts -->
	<link href="../../static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../../static/css/boot-crm.css" rel="stylesheet" type="text/css">
    <style>
        .panel-group{max-height:770px;overflow: auto;}
        .leftMenu{margin:10px;margin-top:5px;}
        .panel-heading{background-color: #337ab7;border-color: #2e6da4;font-size:14px;padding-left:20px;height:36px;line-height:36px;color:white;position:relative;cursor:pointer;}/*转成手形图标*/
        .panel-heading span{position:absolute;right:10px;top:12px;}
        .menu-item-left{padding: 2px; background: transparent; border:1px solid transparent;border-radius: 6px;}
        .menu-item-left:hover{background:#C4E3F3;border:1px solid #1E90FF;}
    </style> 
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="">学员关系管理系统（CRM） v2.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="student/list.action#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="student/list.action#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="student/list.action#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="student/list.action#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="student/list.action#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="student/list.action#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="student/list.action#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="student/list.action#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="student/list.action#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="student/list.action#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="student/list.action#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="student/list.action#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="student/list.action#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="student/list.action#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="student/list.action#"><i class="fa fa-user fa-fw"></i>
				               用户：</a>
				</li>
				<li><a href="student/list.action#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul> <!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
			<!-- 咨询管理  折叠的分组列表 -->
			<div class="panel-heading" id="collapseListGroupHeading1" data-toggle="collapse" data-target="#collapseListGroup1" role="tab">
				<h4 class="panel-title">
					咨询管理 <span class="fa fa-chevron-up right"></span>
				</h4>
			</div>
			<div id="collapseListGroup1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading1">
				<ul class="list-group">
					<li class="list-group-item">
					 <a href="refer/list.action">
							<i class="fa fa-paste fa-fw"></i> 咨询学生管理
					</a></li>

					<li class="list-group-item">
					<a href="refer/list.action">
							<i class="fa fa-lightbulb-o fa-fw"></i> 查询报名学生
					</a>
				   </li>
				</ul>
			</div>

			<!-- 学工管理  折叠的分组列表 -->
			<div class="panel-heading" id="collapseListGroupHeading2" data-toggle="collapse" data-target="#collapseListGroup2" role="tab">
				<h4 class="panel-title">
					学工管理 <span class="fa fa-chevron-up right"></span>
				</h4>
			</div>
			<div id="collapseListGroup2" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading2">
				<ul class="list-group">
					<li class="list-group-item">
					 <a href="/AllStudent">
							<i class="fa fa-suitcase fa-fw"></i> 在校学生管理
					</a></li>

					<li class="list-group-item">
					 <a href="student/list.action">
							<i class="fa fa-bell-o fa-fw"></i> 学生升班留班
					</a></li>

					<li class="list-group-item">
					 <a href="student/list.action">
							<i class="fa fa-coffee fa-fw"></i> 学生流失情况
					</a></li>
				</ul>
			</div>

			<!-- 教学管理  折叠的分组列表 -->
			<div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse" data-target="#collapseListGroup3" role="tab">
				<h4 class="panel-title">
					教学管理 <span class="fa fa-chevron-up right"></span>
				</h4>
			</div>
			<div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading3">
				<ul class="list-group">
					<li class="list-group-item">
					 <a href="/AllCourse">
							<i class="fa fa-flash fa-fw"></i> 课程管理
					</a>
					</li>

					<li class="list-group-item">
					 <a href="/AllClass">
							<i class="fa fa-sitemap fa-fw"></i> 班级管理
					</a></li>
				</ul>
			</div>

            <!-- 就业管理  折叠的分组列表 -->
			<div class="panel-heading" id="collapseListGroupHeading4" data-toggle="collapse" data-target="#collapseListGroup4" role="tab">
				<h4 class="panel-title">
					就业管理 <span class="fa fa-chevron-up right"></span>
				</h4>
			</div>
			<div id="collapseListGroup4" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading4">
				<ul class="list-group">
					<li class="list-group-item">
					 <a href="getjob/list.action">
							<i class="fa fa-cutlery fa-fw"></i> 学生就业情况
					</a></li>

					<li class="list-group-item">
					 <a href="getjob/list.action">
							<i class="fa fa-file-text-o fa-fw"></i> 就业报表
					</a></li>
				</ul>
			</div>

			<!-- 人力资源管理  折叠的分组列表 -->
			<div class="panel-heading" id="collapseListGroupHeading5" data-toggle="collapse" data-target="#collapseListGroup5" role="tab">
				<h4 class="panel-title">
					人力资源管理 <span class="fa fa-chevron-up right"></span>
				</h4>
			</div>
			<div id="collapseListGroup5" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading5">
				<ul class="list-group">
					<li class="list-group-item">
					  <a href="/AllDepartment">
							<i class="fa fa-dashboard fa-fw"></i> 部门管理
					  </a>
				    </li>

					<li class="list-group-item">
						<a href="/AllPost">
								<i class="fa fa-comment-o fa-fw"></i> 职务管理
						</a>
					</li>

					<li class="list-group-item">
						<a href="/AllStaff">
							<i class="fa fa-umbrella fa-fw"></i> 员工管理
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div><!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 学生列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">在校学生管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" action="student/find">
					<div class="form-group">
						<label for="stuName">学生姓名</label> 
						<input type="text" class="form-control" id="stuName" value="" name="stuName">
					</div>
					 
					<div class="form-group">
						<label for="seclassid">班级</label> 
						<select class="form-control" id="seclassid" name="classid">
							<option value="">--请选择--</option>
							<c:forEach items="${classes}" var="c" varStatus="st">

								<option value="${c.id}">${c.className}</option>

							</c:forEach>
							</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a class="btn btn-primary" data-toggle="modal" data-target="#newstudentDialog" onclick="clearstudent()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">学生信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>学号</th>
								<th>学生姓名</th>
								<th>班级</th>
								<th>性别</th>
								<th>入学时间</th>
								<th>就业时间</th>
								<th>学生状态</th>
            					<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${students}" var="c" varStatus="st">
								<tr>
									<td>${c.id}</td>
									<td>${c.stuCode}</td>
									<td>${c.stuName}</td>
									<td>${c.class_.className}</td>
									<td>${c.stuSex}</td>
									<td>${c.beginTime}</td>
									<td>${c.jobTime}</td>
									<td>${c.stuState}</td>
									<td>
										<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#studentEditDialog" onclick="editstudent(${c.stuCode})">修改</button>
										<button type="button" class="btn btn-danger btn-xs" onclick="deletestudent(${c.stuCode})">删除</button>
									</td>



								</tr>
							</c:forEach>
							<%--<tr>--%>
									<%--<td>1</td>--%>
									<%--<td>孙世成</td>--%>
									<%--<td>--%>
									  <%--男</td>--%>
									<%--<td>2018-11-15 16:24:42.0</td>--%>
									<%--<td>2019-04-25 16:24:55.0</td>--%>
								    <%--<td>学习中</td>--%>
									<%--<td>--%>
										<%--<a href="student/list.action#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#studentEditDialog" onclick="editstudent(1)">修改</a>--%>
										<%--<a href="student/list.action#" class="btn btn-danger btn-xs" onclick="deletestudent(1)">删除</a>--%>
									<%--</td>--%>
								<%--</tr>--%>
							</tbody>
					</table>
					<div class="col-md-12 text-right">
						<nav><ul class="pagination"><li class="disabled"><a href="student/list.action#">首页 </a></li><li class="disabled"><a href="student/list.action#">上一页 </a></li><li class="active"><a href="student/list.action#">1<spanclass="sr-only"></spanclass="sr-only"></a></li><li class="disabled"><a href="student/list.action#">下一页</a></li><li class="disabled"><a href="student/list.action#">尾页</a></li></ul></nav></div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 学生列表查询部分  end-->
</div>
<!-- 创建学生模态框 -->
<div class="modal fade" id="newstudentDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建学生信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_student_form">
					<div class="form-group">
						<label for="new_stuname" class="col-sm-2 control-label">
						    学生姓名
						</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="new_stuname" placeholder="学生姓名" name="stuName">
						</div>
						<label for="new_stusex" class="col-sm-2 control-label">
						 性别</label>
						<div class="col-sm-4"> 
							<select class="form-control" id="new_stusex" name="stuSex">
								<option value="0">女</option>
								<option value="1">男</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="new_referid" class="col-sm-2 control-label">
						咨询师</label> 
						<div class="col-sm-4">
							<select class="form-control" id="new_referid" name="referid">
								<option value="">--请选择--</option>

								<c:forEach items="${staffs}" var="s" varStatus="st">
									<option value="${s.staffCode}">${s.staffName}</option>


								</c:forEach>
								<%--<option value="4">--%>
								     <%--海丽</option>--%>
							    <%--</select>--%>
							</select>
						</div>
						<label for="new_stustate" class="col-sm-2 control-label">
						学生状态</label> 
						<div class="col-sm-4">
							<select class="form-control" id="new_stustate" name="stuState">
								<option value="学习中">学习中</option>
								<option value="已升班">已升班</option>
								<option value="已转班">已转班</option>
								<option value="已休学">已休学</option>
								<option value="已流失">已流失</option> 
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="new_classid" class="col-sm-2 control-label">
						 分配班级</label>
						<div class="col-sm-4">
							<select class="form-control" id="new_classid" name="classid">
								<option value="">--请选择--</option>
								<%--<option value="1">--%>
								     <%--1期JavaEE</option>--%>
							    <%--<option value="2">--%>
								     <%--2期JavaEE</option>--%>
							    <%--<option value="3">--%>
								     <%--3期JavaEE</option>--%>
								<c:forEach items="${classes}" var="c" varStatus="st">

									<option value="${c.id}">${c.className}</option>

								</c:forEach>




							    </select>
							
						</div>
						<label for="new_checklevel" class="col-sm-2 control-label">
						 考评等级</label>
						<div class="col-sm-4">
							<select class="form-control" id="new_checklevel" name="checkLevel">
								<option value="A">--A--</option>
								<option value="B">--B--</option>
								<option value="C">--C--</option>
								<option value="D">--D--</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_begintime" class="col-sm-2 control-label">入学时间</label>
						<div class="col-sm-4">
							<input type="date"  class="form-control" id="new_begintime" placeholder="入学时间" name="beginTime">
						</div>
						<label for="new_jobtime" class="col-sm-2 control-label">就业时间</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="new_jobtime" placeholder="就业时间" name="jobTime">
						</div>
					</div>
					 
					<div class="form-group">
						<label for="new_remark" class="col-sm-2 control-label">备注</label>
						<div class="col-sm-10">
						    <textarea rows="3" class="form-control" id="new_remark" placeholder="备注" name="remark" ></textarea>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createstudent()">创建学生</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改学生模态框 -->
<div class="modal fade" id="studentEditDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

		<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改学生信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_student_form">
					<input type="hidden" id="edit_id" name="id" value="1">
					<div class="form-group">
						<label for="edit_stuname" class="col-sm-2 control-label">
						    学生姓名
						</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="edit_stuname" placeholder="学生姓名" name="stuName">
						</div>
						<label for="edit_stusex" class="col-sm-2 control-label">
						 性别</label>
						<div class="col-sm-4"> 
							<select class="form-control" id="edit_stusex" name="stuSex">
								<option value="女">女</option>
								<option value="男">男</option>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="edit_referid" class="col-sm-2 control-label">
						咨询师</label> 
						<div class="col-sm-4">
							<select class="form-control" id="edit_referid" name="referid">
								<option value="">--请选择--</option>
								<c:forEach items="${staffs}" var="s" varStatus="st">
									<option value="${s.staffCode}">${s.staffName}</option>


								</c:forEach>
							    </select>
						</div>
						<label for="edit_stustate" class="col-sm-2 control-label">
						学生状态</label> 
						<div class="col-sm-4">
							<select class="form-control" id="edit_stustate" name="stuState">
								<option value="学习中">学习中</option>
								<option value="已升班">已升班</option>
								<option value="已转班">已转班</option>
								<option value="已休学">已休学</option>
								<option value="已流失">已流失</option> 
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label for="edit_classid" class="col-sm-2 control-label">
						 分配班级</label>
						<div class="col-sm-4">
							<select class="form-control" id="edit_classid" name="classid">
								<option value="">--请选择--</option>
								<c:forEach items="${classes}" var="c" varStatus="st">

									<option value="${c.id}">${c.className}</option>

								</c:forEach>
							    </select>
							
						</div>
						<label for="edit_checklevel" class="col-sm-2 control-label">
						 考评等级</label>
						<div class="col-sm-4">
							<select class="form-control" id="edit_checklevel" name="checkLevel">
								<option value="A">--A--</option>
								<option value="B">--B--</option>
								<option value="C">--C--</option>
								<option value="D">--D--</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_begintime" class="col-sm-2 control-label">入学时间</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="edit_begintime" placeholder="入学时间" name="beginTime">
						</div>
						<label for="edit_jobtime" class="col-sm-2 control-label">就业时间</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="edit_jobtime" placeholder="就业时间" name="jobTime">
						</div>
					</div>
					 
					<div class="form-group">
						<label for="edit_remark" class="col-sm-2 control-label">备注</label>
						<div class="col-sm-10">
						    <textarea rows="3" class="form-control" id="edit_remark" placeholder="备注" name="remark"></textarea>
						</div>
					</div>  
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updatestudent()">保存修改</button>
			</div>
		</div>
	</div>

</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="../../static/js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="../../static/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="../../static/js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="../../static/js/jquery.dataTables.min.js"></script>
<script src="../../static/js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="../../static/js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
$(function(){
    $(".panel-heading").click(function(e){
        /*切换折叠指示图标*/
        $(this).find("span").toggleClass("fa-chevron-down");
        $(this).find("span").toggleClass("fa-chevron-up");
    });
}); 
//清空新建学生窗口中的数据
	function clearstudent() {
	    $("#new_stuname").val("");
	    $("#new_stustate").val("");
	    $("#new_begintime").val("");
	    $("#new_jobtime").val("");
	    $("#new_remark").val("");
	}
	// 创建学生
	function createstudent() {

		// $.post("student/add",
		var d = $("#new_student_form").serialize();

		//alert(d)

		// var name = $("#new_stuname").val();
		// alert(name);

		$.ajax({
			url:"addStudent",
			type:"POST",
			data:d,
			dataType:"text",

			success:function () {     //返回值data为{"result":"提交成功"}
				alert("新建成功！");
				window.location.reload();

			},
			error:function () {
				alert("插入失败，检查输入数据！");
				window.location.reload();
			}
		})


		// function(data){
		//     if(data =="OK"){
		//         alert("学生创建成功！");
		//         window.location.reload();
		//     }else{
		//         alert("学生创建失败！");
		//         window.location.reload();
		//     }
		// });

	}
	// 通过id获取修改的学生信息
	function editstudent(id) {
	    $.ajax({
	        type:"POST",
	        url:"student/edit",
	        data:{"id":id},
	        // success:function(data) {
	        //     $("#edit_id").val(data.id);
	        //     $("#edit_stuname").val(data.stuname);
	        //     $("#edit_stusex").val(data.stusex);
	        //     $("#edit_referid").val(data.referid);
	        //     $("#edit_stustate").val(data.stustate);
	        //     $("#edit_classid").val(data.classid);
	        //     $("#edit_checklevel").val(data.checklevel);
	        //     $("#edit_begintime").val(data.begintime);
	        //     $("#edit_jobtime").val(data.jobtime);
	        //     $("#edit_remark").val(data.remark);
	        // }

	    });

	    return id;
	}
    // 执行修改学生操作
	function updatestudent() {
		// $.post("student/update.action",
		//   $("#edit_student_form").serialize(),
		//   function(data){
		// 	if(data =="OK"){
		// 		alert("学生信息更新成功！");
		// 		window.location.reload();
		// 	}else{
		// 		alert("学生信息更新失败！");
		// 		window.location.reload();
		// 	}
		// });
		var newdata = $("#edit_student_form").serialize();

		console.log(newdata);
		$.ajax({
			url:"student/update",
			type:"POST",
			data:newdata,
			dataType:"text",

			success:function() {

				alert("学生信息更新成功！");
				window.location.reload();

			},
			error:function () {
				alert("学生信息更新失败！");
				window.location.reload();

			}


		})
	}
	// 删除学生
	function deletestudent(id) {
	    // if(confirm('确实要删除该学生吗?')) {
		// $.post("student/delete.action",{"id":id},
		// function(data){
	    //         if(data =="OK"){
	    //             alert("学生删除成功！");
	    //             window.location.reload();
	    //         }else{
	    //             alert("删除学生失败！");
	    //             window.location.reload();
	    //         }
	    //     });
	    // }
		$.ajax({
			url:"student/delete",
			type:"POST",
			data:{"id":id},
			dataType:"text",
			success:function () {
				alert("删除成功!");
				window.location.reload();
			},
			error:function () {
				alert("删除失败！");
				window.location.reload();
			}

			// success:function (data) {     //返回值data为{"result":"提交成功"}
			// 	alert(data.result);
			// },
			// error:function () {
			// 	alert("插入失败，检查输入数据！")
			//
			// }
		})

	}
</script>

</body></html>