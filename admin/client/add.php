<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Startmin - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/startmin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">


</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">Startmin</a>
            </div>

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <ul class="nav navbar-nav navbar-left navbar-top-links">
                <li><a href="#"><i class="fa fa-home fa-fw"></i> Website</a></li>
            </ul>

            <ul class="nav navbar-right navbar-top-links">

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> secondtruth <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li>
                            <a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- /.navbar-top-links -->
        </nav>

        <aside class="sidebar navbar-default" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav in" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-primary" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </li>
                    <li>
                        <a href="../index.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="../product/"><i class="fa fa-bar-chart-o fa-fw"></i> Product<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li>
                                <a href="../product/index.php">products</a>
                            </li>
                            <li>
                                <a href="../product/add.php">Add product</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                            <a href="../client"><i class="fa fa-bar-chart-o fa-fw"></i> Client<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="../client/index.php">Clients</a>
                                </li>
                                <li>
                                    <a href="../client/add.php">Add Client</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </aside>
        <!-- /.sidebar -->

        <div id="page-wrapper" style="min-height: 758px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Client</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <?php
                try {
                    if (isset($_POST['save'])) {
                        require '../config.php';
                        $name = $_POST['name'];
                        $email = $_POST['email'];
                        $adr = $_POST['adr'];
                        $passw = $_POST['passw'];
                        $passw=md5($passw);
                        $sql = "INSERT INTO `client` (`id`, `name`, `email`, `address`, `passw`) VALUES (NULL, '$name', '$email', '$adr', '$passw');";
                        mysqli_query($db, $sql);
                        mysqli_close($db);
                ?>
                        <div class="alert alert-success" role="alert">
                            Client has been saved !!
                        </div>
                    <?php
                    }
                } catch (\Throwable $th) {  ?>

                    <div class="alert alert-danger" role="alert">
                        <?php echo  $th;   ?>
                    </div>
                <?php
                }

                ?>



                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Add Client
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form role="form" action="" method="post" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input class="form-control" placeholder="Enter name" name="name" required>
                                            </div>

                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="email" class="form-control" placeholder="Enter email" name="email" required>
                                            
                                            </div>
                                            <div class="form-group">
                                                <label>Address</label>
                                                <textarea class="form-control" rows="5" name="adr" ></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" class="form-control" placeholder="Enter password" name="passw" >
                                            
                                            </div>
                                            <button type="submit" name="save" class="btn btn-default">Add Client</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../js/startmin.js"></script>



</body>

</html>