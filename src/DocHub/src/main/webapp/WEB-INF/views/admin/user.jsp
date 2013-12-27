#parse("./template/header.jsp")
<script type="text/javascript">
	function onChoosePemissionlevel(node) {
		$("#permissionlevel").val(node.innerText);
	}

	function onChooseActive(node) {
		$("#state").val(node.innerText);
	}

	function addUser() {
		var username = $("#username").val();
		$.ajax({
			url : "usernameExist.aj",
			data : {
				username : username
			},
			type : "post",
			datatype : "json",
			success : function(data) {
				if (data.exist) {
					new Toast({
						message : "用户名已存在！"
					}).show();
				} else {
					$("#adduser-form").submit();
					js$('#addUserModal').modal('toggle');
					$("#username").val("");
					$("#name").val("");
				}
			},
			error : function(data) {
			}
		});

	}

	function onEditPemissionlevel(node) {
		$("#editpermissionlevel").val(node.innerText);
	}

	function onEditActive(node) {
		$("#editstate").val(node.innerText);
	}

	function onEditUser(userid) {
		console.dir($("#userid"));
		console.log(userid);
		$.ajax({
			url : "getUser.aj",
			data : {
				userid : userid
			},
			type : "post",
			datatype : "json",
			success : function(data) {
				$("#edituserid").val(data.userid);
				$("#editusername").val(data.username);
				$("#editpassword").val(data.password);
				$("#editname").val(data.name);
				$("#editpermissionlevel").val(data.permissionlevel);
				$("#editstate").val(data.state);
			},
			error : function(data) {
			}
		});
	}
	
	function saveUser() {
		var userid=$("#edituserid").val();
		var username = $("#editusername").val();
		$.ajax({
			url : "editusernameExist.aj",
			data : {
				userid: userid,
				username : username
			},
			type : "post",
			datatype : "json",
			success : function(data) {
				if (data.exist) {
					new Toast({
						message : "用户名已存在！"
					}).show();
				} else {
					$("#edituser-form").submit();
					js$('#editUserModal').modal('toggle');
					$("#edituserid").val("");
					$("#editusername").val("");
					$("#editpassword").val("");
					$("#editusername").val("");
				}
			},
			error : function(data) {
			}
		});

	}
</script>
<div class="col-xs-12 col-md-9">
	<nav>
		<ol class="breadcrumb">
			<li><a href="../document/index.html"><span
					class="glyphicon glyphicon-home"></span> 首页</a>
			</li>
			<li><a href="../admin/user.html">管理</a>
			</li>
			<li class="active">用户管理</li>
		</ol>
		<!-- /.breadcrumb -->
	</nav>

	<div id="main-content-container">

		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="pull-left">用户管理</h3>
				<div class="pull-right">
					<button type="button" class="btn btn-primary btn-sm"
						data-toggle="modal" data-target="#addUserModal">
						<span class="glyphicon glyphicon-plus"></span> 添加用户
					</button>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- /.panel-heading -->

			<!-- .addUserModal -->
			<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog"
				aria-labelledby="addUserModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="addUserModalLabel">添加用户</h4>
						</div>
						<div class="modal-body">
							<form action="addUser.html" method="post" class="form-horizontal"
								id="adduser-form" role="form">
								<div class="form-group">
									<label for="username" class="col-sm-2 control-label">用户名</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="username"
											name="username" placeholder="用户名(not null)">
									</div>
								</div>

								<div class="form-group">
									<label for="password" class="col-sm-2 control-label">密码</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="password"
											name="password" value="123456">
									</div>
								</div>

								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">昵称</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="name" name="name"
											placeholder="昵称(not null)">
									</div>
								</div>

								<div class="form-group">
									<label for="permissionlevel" class="col-sm-2 control-label">权限</label>
									<div class="col-sm-10 btn-group">
										<input type="text" name="permissionlevel" id="permissionlevel"
											class="btn btn-default " value="普通用户">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown">
											<span class="caret"></span> <span class="sr-only">Toggle
												Dropdown</span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="javascript:void(0)"
												onclick=onChoosePemissionlevel(this)>管理员</a>
											</li>
											<li><a href="javascript:void(0)"
												onclick=onChoosePemissionlevel(this)>普通用户</a>
											</li>
										</ul>
									</div>
								</div>

								<div class="form-group">
									<label for="state" class="col-sm-2 control-label">状态</label>
									<div class="col-sm-10 btn-group ">
										<input type="text" name="state" id="state"
											class="btn btn-default" value="active">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown">
											<span class="caret"></span> <span class="sr-only">Toggle
												Dropdown</span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="javascript:void(0)"
												onclick=onChooseActive(this)>active</a>
											</li>
											<li><a href="javascript:void(0)"
												onclick=onChooseActive(this)>unactive</a>
											</li>
										</ul>
									</div>
								</div>

								<div class="form-group modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">取消</button>
									<button type="button" class="btn btn-primary"
										onclick="addUser()">添加</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- /.addUserModal -->
			<div class="panel-body">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>用户名</th>
							<th>昵称</th>
							<th>身份</th>
							<th>状态</th>
							<th>编辑</th>
						</tr>
					</thead>
					<tbody>
						#foreach($user in $userList)
						<tr>
							<td>$user.getId()</td>
							<td>$user.getUsername()</td>
							<td>$user.getName()</td> #if($user.getPessionLevel()==0)
							<td>管理员</td> #else
							<td>普通用户</td> #end #if($user.getActive())
							<td><label class="btn btn-success btn-sm">活动</label> #else
							<td><label class="btn btn-danger btn-sm">停用</label> #end
							<td><button type="button" class="btn btn-primary btn-sm"
									data-toggle="modal" data-target="#editUserModal" onclick=onEditUser($user.getId())>
									<span class="glyphicon glyphicon-plus"></span> 编辑
								</button></td>
						</tr>
						#end
					</tbody>
				</table>
			</div>
			<!-- /.panel-body -->
			<!-- .editUserModal -->
			<div class="modal fade" id="editUserModal" tabindex="-1"
				role="dialog" aria-labelledby="editUserModalLabel"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="editUserModalLabel">编辑用户</h4>
						</div>
						<div class="modal-body">
							<form action="editUser.html" method="post"
								class="form-horizontal" id="edituser-form" role="form">
								<input type="text" style="visibility:hidden" id="edituserid"
											name="edituserid">
								<div class="form-group">
									<label for="editusername" class="col-sm-2 control-label">用户名</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="editusername"
											name="editusername">
									</div>
								</div>

								<div class="form-group">
									<label for="editpassword" class="col-sm-2 control-label">密码</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="editpassword"
											name="editpassword">
									</div>
								</div>

								<div class="form-group">
									<label for="editname" class="col-sm-2 control-label">昵称</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="editname"
											name="editname">
									</div>
								</div>

								<div class="form-group">
									<label for="editpermissionlevel" class="col-sm-2 control-label">权限</label>
									<div class="col-sm-10 btn-group">
										<input type="text" name="editpermissionlevel"
											id="editpermissionlevel" class="btn btn-default ">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown">
											<span class="caret"></span> <span class="sr-only">Toggle
												Dropdown</span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="javascript:void(0)"
												onclick=onEditPemissionlevel(this)>管理员</a>
											</li>
											<li><a href="javascript:void(0)"
												onclick=onEditPemissionlevel(this)>普通用户</a>
											</li>
										</ul>
									</div>
								</div>

								<div class="form-group">
									<label for="editstate" class="col-sm-2 control-label">状态</label>
									<div class="col-sm-10 btn-group ">
										<input type="text" name="editstate" id="editstate"
											class="btn btn-default">
										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown">
											<span class="caret"></span> <span class="sr-only">Toggle
												Dropdown</span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="javascript:void(0)"
												onclick=onEditActive(this)>active</a>
											</li>
											<li><a href="javascript:void(0)"
												onclick=onEditActive(this)>unactive</a>
											</li>
										</ul>
									</div>
								</div>

								<div class="form-group modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">取消</button>
									<button type="button" class="btn btn-primary"
										onclick="saveUser()">修改</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- /.editUserModal -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /#main-content-container -->
</div>
<!-- /.col left -->
#parse("./template/right.jsp") #parse("./template/footer.jsp")
