<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>DocHub</title>
    <meta name="description" content="DocHub is an online document management system.">
    <meta name="info" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">

    <script src="/resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  </head>
  <body>
    <!--[if lt IE 7]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
    <![endif]-->

    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">DocHub</a>
        </div><!-- /.navbar-header -->

        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/document/index.html"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
            <li><a href="/stat/index.html"><span class="glyphicon glyphicon-stats"></span> 统计</a></li>
            <li><a href="/admin/user/index.html"><span class="glyphicon glyphicon-wrench"></span> 管理</a></li>
            <li><a href="#about"><span class="glyphicon glyphicon-question-sign"></span> 帮助</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#profile"><span class="glyphicon glyphicon-user"></span> 小明</a></li>
            <li class="active"><a href="/document/create.html"><span class="glyphicon glyphicon-plus"></span> 文献录入</a></li>
            <li><a href="/settings/index.html"><span class="glyphicon glyphicon-cog"></span> 账号设置</a></li>
            <li><a href="#logout"><span class="glyphicon glyphicon-log-out"></span> 登出</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

    <!-- Main content goes here -->
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-9">
          <nav>
            <ol class="breadcrumb">
              <li><a href="/document/index.html"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
              <li class="active">新的文献</li>
            </ol><!-- /.breadcrumb -->
          </nav>

          <div id="main-content-container">

            <div class="panel panel-default">
              <div class="panel-heading">
                <h3>新的文献</h3>
              </div><!-- /.panel-heading -->

              <div class="panel-body">

                <form class="form-horizontal" role="form">
                  <div class="form-group">
                    <label for="btn-doctype" class="col-sm-2 control-label">文献类型</label>
                    <div class="btn-group col-sm-10">
                      <button type="button" class="btn btn-default">未分类</button>
                      <button type="button" id="btn-doctype" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                        <span class="sr-only">Toggle Dropdown</span>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">未分类</a></li>
                        <li class="divider"></li>
                        <li><a href="#">图书</a></li>
                        <li><a href="#">图书章节</a></li>
                        <li><a href="#">期刊</a></li>
                        <li><a href="#">会议</a></li>
                        <li><a href="#">学位论文</a></li>
                        <li><a href="#">技术报告</a></li>
                        <li><a href="#">在线资源</a></li>
                      </ul>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputTitle" class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputTitle">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputAuthor" class="col-sm-2 control-label">作者</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputAuthor">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputAbstract" class="col-sm-2 control-label">摘要</label>
                    <div class="col-sm-10">
                      <textarea class="form-control" id="inputAbstract" row="4"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputKeyword" class="col-sm-2 control-label">关键字</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputKeyword">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPublisher" class="col-sm-2 control-label">出版单位</label>
                    <div class="col-sm-10">
                      <div class="input-group">
                        <input type="text" class="form-control">
                        <div class="input-group-btn">
                          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                          <ul class="dropdown-menu pull-right">
                            <li><a href="#">软件学报</a></li>
                            <li><a href="#">计算机学报</a></li>
                            <li><a href="#">xxxx</a></li>
                          </ul>
                        </div><!-- /btn-group -->
                      </div><!-- /input-group -->
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPublishedDate" class="col-sm-2 control-label">发表年份</label>
                    <div class="col-sm-2">
                      <input type="text" class="form-control" id="inputPublishedDate" placeholder="e.g. 2013">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPageFrom" class="col-sm-2 control-label">页码</label>
                    <div class="col-sm-2">
                      <input type="text" class="form-control" id="inputPageFrom" placeholder="起始">
                    </div>
                    <div class="col-sm-2">
                      <input type="text" class="form-control" id="inputPageTo" placeholder="结束">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputURL" class="col-sm-2 control-label">URL</label>
                    <div class="col-sm-10">
                      <input type="url" class="form-control" id="inputURL">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputTags" class="col-sm-2 control-label">标签</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputTags" placeholder="标签之间以英文逗号(,)分开">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputReference" class="col-sm-2 control-label">引用关系</label>
                    <div class="col-sm-1">
                      <button type="button" id="inputReference" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-plus"></span> 添加</button>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputAttachment" class="col-sm-2 control-label">附件</label>
                    <div class="col-sm-1">
                      <button type="button" id="inputAttachment" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-plus"></span> 添加</button>
                    </div>
                  </div>
                  <hr>
                  <div class="form-group">
                    <div class="col-sm-offset-9 col-sm-1">
                      <button type="button" class="btn btn-default">取消</button>
                    </div>
                    <div class="col-sm-1">
                      <button type="submit" class="btn btn-primary">保存</button>
                    </div>
                  </div>
                </form>
              </div><!-- /.panel-body -->
            </div><!-- /.panel -->
          </div><!-- /#main-content-container -->
        </div><!-- /.col left -->

        <div class="col-xs-12 col-md-3">
          <div class="panel panel-default">
            <div class="panel-body">
              <p>小明<small> (xiaoming)</small></p>
              <p>管理员</p>
            </div>
          </div><!-- /.panel -->

          <div class="list-group">
              <a href="#" class="list-group-item">我导入的文献</a>
              <a href="#" class="list-group-item">评价过的文献</a>
              <a href="#" class="list-group-item"><span class="badge pull-right">3</span>草稿</a>
          </div><!-- /.list-group -->

          <div class="panel panel-default">
            <div class="panel-heading">热门标签</div>
            <div class="list-group">
              <a href="#" class="list-group-item">#云计算</a>
              <a href="#" class="list-group-item">#分布式</a>
              <a href="#" class="list-group-item">#大数据</a>
              <a href="#" class="list-group-item">#扯淡</a>
              <a href="#" class="list-group-item">#被过度炒作的概念</a>
              <a href="#" class="list-group-item">#NoSQL</a>
              <a href="#" class="list-group-item">#高大上</a>
              <a href="#" class="list-group-item">#屌炸天</a>
              <a href="#" class="list-group-item">#福利</a>
            </div><!-- /.list-group -->
          </div><!-- /.panel -->

        </div><!-- /.col right -->
      </div><!-- /.row -->

      <hr>

      <footer>
        <p>&copy; DocHub 2013</p>
      </footer>

    </div><!-- /.container -->

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="/resources/js/vendor/jquery-1.10.2.min.js"><\/script>')</script>

    <script src="/resources/js/vendor/bootstrap.min.js"></script>

    <script src="/resources/js/plugins.js"></script>
    <script src="/resources/js/main.js"></script>

    <script>
        var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
        (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        g.src='//www.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>
  </body>
</html>