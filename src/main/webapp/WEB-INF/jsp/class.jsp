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
			<a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="crmclass/list.action#">
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
				    <a class="text-center" href="crmclass/list.action#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="crmclass/list.action#">
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
				    <a href="crmclass/list.action#">
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
				    <a class="text-center" href="crmclass/list.action#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="crmclass/list.action#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="crmclass/list.action#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="crmclass/list.action#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="crmclass/list.action#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="crmclass/list.action#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="crmclass/list.action#"><i class="fa fa-user fa-fw"></i>
				               用户：</a>
				</li>
				<li><a href="crmclass/list.action#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
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
    <!-- 班级列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">班级管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
		<!-- 搜索部分 -->
			<div class="panel-body">
				<form class="form-inline" method="get" action="class/find">
					<div class="form-group">
						<label for="crmclassName">班级名称</label> 
						<input type="text" class="form-control" id="crmclassName" value="" name="className">
					</div>
					 <div class="form-group">
						<label for="crmstate">状态</label>  
						 <select class="form-control" id="crmstate" name="state">
						    <option value="未开课" selected="selected">未开课</option>
						    <option value="已开课">已开课</option>
						    <option value="已结束">已结束</option>
						</select>
					</div>
					<div class="form-group">
						<label for="crmtime">时间</label>  
						<input type="date" class="form-control" id="crmtime" placeholder="开班时间" name="time">
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="crmclass/list.action#" class="btn btn-primary" data-toggle="modal" data-target="#newCrmclassDialog" onclick="clearCrmclass()">新建</a>
		 <a href="crmclass/list.action#" class="btn btn-info" data-toggle="modal" data-target="#uploadDialog" onclick="clearupload()">上传课表</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">班级信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>班级名称</th>
								<th>开授课程</th> 
								<th>开班时间</th>
								<th>毕业时间</th>
								<th>状态</th>
								<th>学生总数</th>
								<th>升学数</th>
								<th>留班数</th>
								<th>操作</th> 
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${classes}" var="c" varStatus="st">
								<tr>
									<td>${c.id}</td>
									<td>${c.className}</td>
									<td>${c.course.lessonName}</td>
									<td>${c.beginTime}</td>
									<td>${c.endTime}</td>
									<td>${c.state}</td>
									<td>${c.totalCount}</td>
									<td>${c.goCount}</td>
									<td>${c.leaveCount}</td>
									<td>
										<a class="btn btn-primary btn-xs" data-toggle="modal" data-target="#crmclassEditDialog" onclick="editcrmclass(${c.id})">修改</a>
										<a class="btn btn-danger btn-xs" onclick="deletecrmclass(${c.id})">删除</a>
									</td>
								</tr>
							</c:forEach>
							<!--<tr>-->
									<!--<td>2</td>-->
									<!--<td>2期JavaEE</td> -->
									<!--<td>Java基础</td> -->
									<!--<td>2015-04-28 00:00:00.0</td>-->
		 							<!--<td>2016-01-01 15:02:02.0</td>-->
									<!--<td>已开课</td>-->
									<!--<td>67</td>-->
									<!--<td>0</td>-->
									<!--<td>0</td>-->
								<!--<td>-->
										<!--<a href="crmclass/list.action#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#crmclassEditDialog" onclick="editcrmclass(2)">修改</a>-->
										<!--<a href="crmclass/list.action#" class="btn btn-danger btn-xs" onclick="deletecrmclass(2)">删除</a>-->
									<!--</td>-->
								<!--</tr>-->
							<!--<tr>-->
									<!--<td>3</td>-->
									<!--<td>3期JavaEE</td> -->
									<!--<td>Java基础</td> -->
									<!--<td>2015-03-29 00:00:00.0</td>-->
		 							<!--<td>2016-02-09 15:02:15.0</td>-->
									<!--<td>已开课</td>-->
									<!--<td>120</td>-->
									<!--<td>0</td>-->
									<!--<td>0</td>-->
								<!--<td>-->
										<!--<a href="crmclass/list.action#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#crmclassEditDialog" onclick="editcrmclass(3)">修改</a>-->
										<!--<a href="crmclass/list.action#" class="btn btn-danger btn-xs" onclick="deletecrmclass(3)">删除</a>-->
									<!--</td>-->
								<!--</tr>-->
							<!--<tr>-->
									<!--<td>1</td>-->
									<!--<td>1期JavaEE</td> -->
									<!--<td>Java就业</td> -->
									<!--<td>2015-03-10 00:00:00.0</td>-->
		 							<!--<td>2015-04-30 00:00:00.0</td>-->
									<!--<td>已结束</td>-->
									<!--<td>80</td>-->
									<!--<td>80</td>-->
									<!--<td>0</td>-->
								<!--<td>-->
										<!--<a href="crmclass/list.action#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#crmclassEditDialog" onclick="editcrmclass(1)">修改</a>-->
										<!--<a href="crmclass/list.action#" class="btn btn-danger btn-xs" onclick="deletecrmclass(1)">删除</a>-->
									<!--</td>-->
								<!--</tr>-->
							</tbody>
					</table>
					<div class="col-md-12 text-right">
						<nav><ul class="pagination"><li class="disabled"><a href="crmclass/list.action#">首页 </a></li><li class="disabled"><a href="crmclass/list.action#">上一页 </a></li><li class="active"><a href="crmclass/list.action#">1<spanclass="sr-only"></spanclass="sr-only"></a></li><li class="disabled"><a href="crmclass/list.action#">下一页</a></li><li class="disabled"><a href="crmclass/list.action#">尾页</a></li></ul></nav></div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 班级列表查询部分  end-->
</div>
<!-- 上传课表模态框 -->
<div class="modal fade" id="uploadDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">上传课表信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="">
					<div class="form-group">
						<label for="new_uploadfilename" class="col-sm-2 control-label">
						    上传课表名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_uploadfilename" placeholder="上传课表名称" name="uploadfilename">
						</div>
					</div> 
					<div class="form-group">
						<label for="new_uploadpath" class="col-sm-2 control-label">
						   上传课表位置
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_uploadpath" placeholder="上传课表位置" name="uploadpath">
						</div>
					</div> 
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createcrmclass()">创建班级</button>
			</div>
		</div>
	</div>
</div>
<!-- 创建班级模态框 -->
<div class="modal fade" id="newCrmclassDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建班级信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_crmclass_form">
					<div class="form-group">
						<label for="new_crmclassName" class="col-sm-2 control-label">
						    班级名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_crmclassName" placeholder="班级名称" name="className"">
						</div>
					</div> 
					<div class="form-group">
						<label for="new_begintime" class="col-sm-2 control-label">
						    开班时间
						</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="new_begintime" placeholder="开班时间" name="beginTime">
						</div>
						<label for="new_endtime" class="col-sm-2 control-label">
						   毕业时间
						</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="new_endtime" placeholder="毕业时间" name="endTime">
						</div>
					</div> 
					<div class="form-group">
						<label for="new_state" class="col-sm-2 control-label">
						    状态
						</label>
						<div class="col-sm-4">
							<select class="form-control" id="new_state" name="state">
							    <option value="未开课" selected="selected">未开课</option>
							    <option value="已开课">已开课</option>
							    <option value="已结束">已结束</option>
							</select>
						</div>
						<label for="new_totalcount" class="col-sm-2 control-label">
						   学生总数
						</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" id="new_totalcount" placeholder="学生总数" name="totalCount">
						</div>
					</div>
					<div class="form-group">
						<label for="new_gocount" class="col-sm-2 control-label">
						   升学数
						</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" id="new_gocount" placeholder="升学数" name="goCount">
						</div>
						<label for="new_leavecount" class="col-sm-2 control-label">
						   留班数
						</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" id="new_leavecount" placeholder="留班数" name="leaveCount">
						</div>
					</div>
				    <div class="form-group">
						<label for="new_lessontype" class="col-sm-2 control-label">
						    所属课程
						</label>
						<div class="col-sm-10">
							<select class="form-control" id="new_lessontype" name="lessonTypeId">
							   <%--<option value="0">---请选择---</option>--%>
							    <%--<option value="1">Java基础</option>--%>
								<%--<option value="2">Java就业</option>--%>
								<%--<option value="3">Java Web基础</option>--%>

								<c:forEach items="${courseList}" var="c">
									<option value="${c.ID}">${c.lessonName}</option>
								</c:forEach>
								</select>
						</div>
					</div> 
					<div class="form-group">
						<label for="new_remark" class="col-sm-2 control-label">
						    备注
						</label>
						<div class="col-sm-10">
							<textarea rows="3" type="text" class="form-control" id="new_remark" placeholder="备注" name="remark"></textarea>
						</div>
					</div> 
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createcrmclass()">创建班级</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改班级模态框 -->
<div class="modal fade" id="crmclassEditDialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改班级信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_crmclass_form">
					<input type="hidden" id="edit_classid" name="classid">
					<div class="form-group">
						<label for="edit_crmclassName" class="col-sm-2 control-label">
						    班级名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_crmclassName" placeholder="班级名称" name="className">
						</div>
					</div> 
					<div class="form-group">
						<label for="edit_begintime" class="col-sm-2 control-label">
						    开班时间
						</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="edit_begintime" placeholder="开班时间" name="beginTime">
						</div>
						<label for="edit_endtime" class="col-sm-2 control-label">
						   毕业时间
						</label>
						<div class="col-sm-4">
							<input type="date" class="form-control" id="edit_endtime" placeholder="毕业时间" name="endTime">
						</div>
					</div> 
					<div class="form-group">
						<label for="edit_state" class="col-sm-2 control-label">
						    状态
						</label>
						<div class="col-sm-4">
							<select class="form-control" id="edit_state" name="state">
							    <option value="未开课" selected="selected">未开课</option>
							    <option value="已开课">已开课</option>
							    <option value="已结束">已结束</option>
							</select>
						</div>
						<label for="edit_totalcount" class="col-sm-2 control-label">
						   学生总数
						</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" id="edit_totalcount" placeholder="学生总数" name="totalCount">
						</div>
					</div>
					<div class="form-group">
						<label for="edit_gocount" class="col-sm-2 control-label">
						   升学数
						</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" id="edit_gocount" placeholder="升学数" name="goCount">
						</div>
						<label for="edit_leavecount" class="col-sm-2 control-label">
						   留班数
						</label>
						<div class="col-sm-4">
							<input type="number" class="form-control" id="edit_leavecount" placeholder="留班数" name="leaveCount">
						</div>
					</div>
				    <div class="form-group">
						<label for="edit_lessontype" class="col-sm-2 control-label">
						    所属课程
						</label>
						<div class="col-sm-10">
							<select class="form-control" id="edit_lessontype" name="lessonTypeId">
							   <%--<option value="0">---请选择---</option>--%>
							   <%--<option value="1">Java基础</option>--%>
								<%--<option value="2">Java就业</option>--%>
								<%--<option value="3">Java Web基础</option>--%>
								<c:forEach items="${courseList}" var="c">
									<option value="${c.ID}">${c.lessonName}</option>
								</c:forEach>
								</select>
						</div>
					</div> 
					<div class="form-group">
						<label for="edit_remark" class="col-sm-2 control-label">
						    备注
						</label>
						<div class="col-sm-10">
							<textarea rows="3" type="text" class="form-control" id="edit_remark" placeholder="备注" name="remark"></textarea>
						</div>
					</div> 
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updatecrmclass()">保存修改</button>
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
//清空新建班级窗口中的数据
	function clearCrmclass() {
	    $("#new_crmclassName").val(""); 
	    $("#new_begintime").val(""); 
	    $("#new_endtime").val(""); 
	    $("#new_state").val(""); 
	    $("#new_totalcount").val(""); 
	    $("#new_gocount").val(""); 
	    $("#new_leavecount").val(""); 
	    $("#new_lessontype").val(""); 
	    $("#new_uploadfilename").val(""); 
	    $("#new_uploadpath").val(""); 
	    $("#new_remark").val(""); 
	}
	// 创建班级
	function createcrmclass() {
	// $.Post("crmclass/create.action",
	// $("#new_crmclass_form").serialize(),function(data){
	//         if(data =="OK"){
	//             alert("班级创建成功！");
	//             window.location.reload();
	//         }else{
	//             alert("班级创建失败！");
	//             window.location.reload();
	//         }
	//     });

		$.ajax({
			type:"post",
			url:"class/add",
			data:$("#new_crmclass_form").serialize(),
			dataType:"text",
			success:function(data){
				alert("班级创建成功！");
				console.log(data);
				window.location.reload();
			},
			error:function(){
				alert("班级创建失败！");
				window.location.reload();
			}
		})
	}
	// 通过id获取修改的班级信息
	function editcrmclass(id) {

	    $.ajax({
	        type:"get",
	        url:"class/getClassId",
	        data:{id:id},
			success:function () {

			}

	    });
	}
    // 执行修改班级操作
	function updatecrmclass() {
		// $.Post("crmclass/update.action",
		//  $("#edit_crmclass_form").serialize(),
		//   function(data){
		// 	if(data =="OK"){
		// 		alert("班级信息更新成功！");
		// 		window.location.reload();
		// 	}else{
		// 		alert("班级信息更新失败！");
		// 		window.location.reload();
		// 	}
		// });
		$.ajax({
			type:"get",
			url:"class/update",
			data:$("#edit_crmclass_form").serialize(),
			success:function () {
				alert("班级信息更新成功！");
				window.location.reload();
			},error:function () {
				alert("班级信息更新失败！");
				window.location.reload();

			}

		});
	}
	// 删除班级
	function deletecrmclass(id) {
	 if(confirm('确实要删除该班级吗?')) {
	 // $.Post("crmclass/delete.action",{"id":id},
	 //  function(data){
	 //            if(data =="OK"){
	 //                alert("班级删除成功！");
	 //                window.location.reload();
	 //            }else{
	 //                alert("删除班级失败！");
	 //                window.location.reload();
	 //            }
	 //        });
		 $.ajax({
			 type:"get",
			 url:"class/delete",
			 data:{id:id},
			 success:function () {
				 alert("班级删除成功！");
				 window.location.reload();
			 },error:function () {
				 alert("删除班级失败！");
				 window.location.reload();

			 }

		 });
	    }
	}
</script>

</body></html>