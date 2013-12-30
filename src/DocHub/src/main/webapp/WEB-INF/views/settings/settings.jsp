#parse("./template/header.jsp")
<script type="text/javascript">
	function onChangePassword() {
		var form = $("#account-setting");
		var oldpassword = $("#inputOldPassword").val();
		var newp1 = $("#inputNewPassword1").val();
		var newp2 = $("#inputNewPassword2").val();

		if (newp1 != newp2) {
			new Toast({
				message : "两次密码不一样,请重新输入！"
			}).show();
			$("#inputNewPassword1").val("");
			$("#inputNewPassword2").val("");
			return;
		}

		if (oldpassword == null || oldpassword == "") {
			new Toast({
				message : "原始密码不能为空"
			}).show();
			return;
		}

		$.ajax({
			url : "checkpassword.aj",
			data : {
				password : oldpassword
			},
			type : "post",
			dataType : "json",
			success : function(data) {
				console.log(data.flag);
				if (data.flag == "success") {
					new Toast({
						message : "请重新登录!"
					}).show();
					form.submit();
				}else{
					new Toast({
						message : "旧密码错误，请重新输入!"
					}).show();
					$("#inputOldPassword").val("");
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
					class="glyphicon glyphicon-home"></span> 首页</a></li>
			<li class="active">账号设置</li>
		</ol>
		<!-- /.breadcrumb -->
	</nav>

	<div id="main-content-container">

		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>账号设置</h3>
			</div>
			<!-- /.panel-heading -->

			<div class="panel-body">
				<form action="changepassword.html" method="post" class="form-horizontal"
					id="account-setting" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-3">
							<p class="form-control-static">$userAccessContext.getUserName()</p>
						</div>
					</div>
					<div class="form-group">
						<label for="inputOldPassword" class="col-sm-2 control-label">旧密码</label>
						<div class="col-sm-3">
							<input type="password" class="form-control" id="inputOldPassword">
						</div>
					</div>
					<div class="form-group">
						<label for="inputNewPassword1" class="col-sm-2 control-label">新密码</label>
						<div class="col-sm-3">
							<input type="password" class="form-control"
								id="inputNewPassword1" name="newPassword">
						</div>
					</div>
					<div class="form-group">
						<label for="inputNewPassword2" class="col-sm-2 control-label">确认新密码</label>
						<div class="col-sm-3">
							<input type="password" class="form-control"
								id="inputNewPassword2">
						</div>
					</div>

					<hr>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-1">
							<button type="button" class="btn btn-default">取消</button>
						</div>
						<div class="col-sm-1">
							<button type="button" class="btn btn-primary"
								onclick=onChangePassword()>修改</button>
						</div>
					</div>
				</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /#main-content-container -->
</div>
<!-- /.col left -->
#parse("./template/right.jsp") #parse("./template/footer.jsp")
