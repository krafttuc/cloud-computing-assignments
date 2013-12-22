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

    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/main.css">

    <script src="../resources/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
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
            <li><a href="../document/index.html"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
            <li class="active"><a href="../statistics/index.html"><span class="glyphicon glyphicon-stats"></span> 统计</a></li>
            <li><a href="../admin/user.html"><span class="glyphicon glyphicon-wrench"></span> 管理</a></li>
            <li><a href="#about"><span class="glyphicon glyphicon-question-sign"></span> 帮助</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#profile"><span class="glyphicon glyphicon-user"></span> 小明</a></li>
            <li><a href="../document/create.html"><span class="glyphicon glyphicon-plus"></span> 文献录入</a></li>
            <li><a href="../settings/index.html"><span class="glyphicon glyphicon-cog"></span> 账号设置</a></li>
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
              <li><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
              <li class="active">统计</li>
            </ol><!-- /.breadcrumb -->
          </nav>

          <div id="main-content-container">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3>统计</h3>
              </div><!-- /.panel-heading -->
              <div class="panel-body">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>用户名</th>
                      <th>文献数</th>
                      <th>评论数</th>
                      <th>附件数</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>小黄毛</td>
                      <td>21</td>
                      <td>3</td>
                      <td>33</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>MM</td>
                      <td>21</td>
                      <td>11</td>
                      <td>9</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>胖子</td>
                      <td>21</td>
                      <td>32</td>
                      <td>33</td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td>炸弹人</td>
                      <td>21</td>
                      <td>3</td>
                      <td>93</td>
                    </tr>
                    <tr>
                      <td>5</td>
                      <td>皮卡</td>
                      <td>21</td>
                      <td>3</td>
                      <td>13</td>
                    </tr>
                    <tr>
                      <td>6</td>
                      <td>天使</td>
                      <td>21</td>
                      <td>3</td>
                      <td>13</td>
                    </tr>
                    <tr>
                      <td>7</td>
                      <td>野猪骑士</td>
                      <td>89</td>
                      <td>11</td>
                      <td>13</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div><!-- /.panel -->

            <ul class="pagination">
              <li class="disabled"><a href="#">&laquo;</a></li>
              <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">6</a></li>
              <li><a href="#">7</a></li>
              <li><a href="#">&raquo;</a></li>
            </ul><!-- /.pagination -->

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
    <script>window.jQuery || document.write('<script src="../resources/js/vendor/jquery-1.10.2.min.js"><\/script>')</script>

    <script src="../resources/js/vendor/bootstrap.min.js"></script>

    <script src="../resources/js/plugins.js"></script>
    <script src="../resources/js/main.js"></script>

    <script>
        var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
        (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        g.src='//www.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>
  </body>
</html>
