<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="MyWebsite.DashBoard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <style type="text/css">
       .ddl
        {
            border:2px solid #7d6754;
            border-radius:5px;
            padding:3px;
            -webkit-appearance: none; 
            background-image:url('images/Nggfj.png');
         
            background-position:170px;
            background-repeat:no-repeat;
            text-indent: 0.01px;/*In Firefox*/
            text-overflow: '';/*In Firefox*/
        }
      .button 
      {
            background-color: #4CAF50; /* Green */
    border: none;
    color: white;
  width:100px;
  height:50px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
  
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
     .button:active {
  background-color: #4CAF50;
 
  transform: translateY(4px);
}
    </style>



  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link href="GridStyle.css" rel="stylesheet" type="text/css" /> 
  <link rel="shortcut icon" href="favicon.ico">
		<link rel="stylesheet" type="text/css" href="new/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="new/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="new/css/component.css" />
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">

<form id="FORM1" runat="server">
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="DashBoard.aspx" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>D</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>NC</b></span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/avatar.png" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/avatar.png" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/avatar.png" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/avatar.png" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/avatar.png" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Create a nice theme
                        <small class="pull-right">40%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">40% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Some task I need to do
                        <small class="pull-right">60%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Make beautiful transitions
                        <small class="pull-right">80%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/avatar.png" class="user-image" alt="User Image">
              <span class="hidden-xs"><asp:Label ID="lblname2" runat="server"></asp:Label></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/avatar.png" class="img-circle" alt="User Image">

                <p>
                  <asp:Label ID="lblname1" runat="server"></asp:Label>
                  <small>Member since Nov. 2012</small>
                </p>
                <br />
                 <li class="user-footer">
                 <p>
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="landing.aspx" class="btn btn-default btn-flat">Sign out</a>
                </div>
                </p>
              </li>
              </li>
              <!-- Menu Body -->
             
              <!-- Menu Footer-->
             
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/avatar.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><asp:Label ID="lblname" runat="server"></asp:Label></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
    <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>My Profile</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="DashBoard.aspx"><i class="fa fa-circle-o"></i> Dashboard</a></li>
            <li class="active"><a href="Profile.aspx"><i class="fa fa-circle-o"></i> Profile</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Messages</span>
            <span class="label label-primary pull-right">4</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
            <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
            <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
            <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
          </ul>
        </li>
        <li>
          <a href="pages/widgets.html">
            <i class="fa fa-th"></i> <span>My Notes</span>
           
          </a>
        </li>
      <%--  <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Charts</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
            <li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
            <li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
            <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
          </ul>
        </li>--%>
       <%-- <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>UI Elements</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
            <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
            <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
            <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
            <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
            <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
          </ul>
        </li>--%>
      <%--  <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Forms</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
            <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
          </ul>
        </li>--%>
       <%-- <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>Tables</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
            <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
          </ul>
        </li>--%>
       <%-- <li>
          <a href="pages/calendar.html">
            <i class="fa fa-calendar"></i> <span>Calendar</span>
            <small class="label pull-right bg-red">3</small>
          </a>
        </li>--%>
       <%-- <li>
          <a href="pages/mailbox/mailbox.html">
            <i class="fa fa-envelope"></i> <span>Mailbox</span>
            <small class="label pull-right bg-yellow">12</small>
          </a>
        </li>--%>
       <%-- <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>Examples</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
            <li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
            <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
            <li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
            <li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
            <li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
            <li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
            <li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
            <li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
          </ul>
        </li>--%>
       <%-- <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>Multilevel</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
            <li>
              <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>--%>
          <%--  <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
          </ul>
        </li>
        <li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      </ul>--%>
    </section>--%>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
       
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="ion ion-ios-cloud-upload-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>UPLOADED</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotesup" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="ion ion-ios-book-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>SOLD</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotessold" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>
         <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="ion ion-ios-cloud-download-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>BOUGHT</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotesbought" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
           <a href="cart1/cart.aspx">    <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span></a>

            <div class="info-box-content">
           <span class="info-box-text"><strong>CART</strong> </span>
              <span class="info-box-number"><asp:Label ID="lblnotescart" runat="server" Font-Bold="true"></asp:Label></span>
            </div> 
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
       
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <div class="row">
        <div class="col-md-12" >
          <div class="box" >
            <div class="box-header with-border" >
              <h3 class="box-title"><strong>SEARCH OUR WEBSITE</strong></h3>

              <div class="box-tools pull-right" >
               
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body" align="center">
              <div class="row" align="center">
                <div class="col-md-8"align="center">
                  <p class="text-center" align="center">
                    <strong></strong>
                  </p>

                 
<div align="center">
<table align="center" width="150%">
<tr>
<td>
<asp:DropDownList ID="ddlgrade"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" 
        Font-Bold="True" onselectedindexchanged="ddlgrade_SelectedIndexChanged" 
        AutoPostBack="True">
<asp:ListItem Text="--SELECT GRADE--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="IX-XII" Value="1"></asp:ListItem>
<asp:ListItem Text="ENGINEERING ENTRANCE" Value="2"></asp:ListItem>
<asp:ListItem Text="MEDICAL ENTRANCE" Value="3"></asp:ListItem>
<asp:ListItem Text="LAW ENTRANCE" Value="4"></asp:ListItem>
<asp:ListItem Text="ENGINEERING NOTES" Value="5"></asp:ListItem>
<asp:ListItem Text="MEDICAL NOTES" Value="6"></asp:ListItem>
<asp:ListItem Text="LAW NOTES" Value="7"></asp:ListItem>
<asp:ListItem Text="CA NOTES" Value="8"></asp:ListItem>
<asp:ListItem Text="OTHERS" Value="9"></asp:ListItem>
</asp:DropDownList>
</td>
<td>
<asp:DropDownList ID="ddlsubject"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="MATHEMATICS" Value="1"></asp:ListItem>
<asp:ListItem Text="ENGLISH" Value="2"></asp:ListItem>
<asp:ListItem Text="HINDI" Value="3"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="4"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="5"></asp:ListItem>
<asp:ListItem Text="BIOLOGY" Value="6"></asp:ListItem>
<asp:ListItem Text="ECONOMICS" Value="7"></asp:ListItem>
<asp:ListItem Text="HISTORY" Value="8"></asp:ListItem>
<asp:ListItem Text="GEOGRAPHY" Value="9"></asp:ListItem>
<asp:ListItem Text="CIVICS" Value="10"></asp:ListItem>
<asp:ListItem Text="CS" Value="11"></asp:ListItem>
<asp:ListItem Text="ELECTRONICS" Value="12"></asp:ListItem>
<asp:ListItem Text="BUSINESS STUDIES" Value="13"></asp:ListItem>
<asp:ListItem Text="ACCOUNTANCY" Value="14"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlenggentr"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="MATHEMATICS" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="3"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlmedentr"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="BIOLOGY" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="3"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddllawentr"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True" >
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="MATHS" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="3"></asp:ListItem>
<asp:ListItem Text="ENGLISH" Value="4"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlstrengg"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT STREAM--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="EC/TC" Value="1"></asp:ListItem>
<asp:ListItem Text="CS/IS" Value="2"></asp:ListItem>
<asp:ListItem Text="CIVIL" Value="3"></asp:ListItem>
<asp:ListItem Text="EEE" Value="4"></asp:ListItem>
<asp:ListItem Text="MECHANICAL" Value="5"></asp:ListItem>
<asp:ListItem Text="MEDICAL ELECTRONICS" Value="6"></asp:ListItem>
<asp:ListItem Text="IEM" Value="7"></asp:ListItem>
<asp:ListItem Text="CONSTRUCTION ENGINEERING" Value="8"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlmednotes"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="ANATOMY" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSIOLOGY" Value="2"></asp:ListItem>
<asp:ListItem Text="BIOCHEMISTRY" Value="3"></asp:ListItem>
<asp:ListItem Text="PATHOLOGY" Value="4"></asp:ListItem>
<asp:ListItem Text="MICROBIOLOGY" Value="5"></asp:ListItem>
<asp:ListItem Text="FORENSIC SCIENCES" Value="6"></asp:ListItem>
<asp:ListItem Text="OPTHALMOLOGY" Value="7"></asp:ListItem>
<asp:ListItem Text="ENT" Value="8"></asp:ListItem>
<asp:ListItem Text="PEDIATRICS" Value="9"></asp:ListItem>

</asp:DropDownList>
<asp:DropDownList ID="ddllawnotes"  BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="ENVIRONMENT LAW" Value="1"></asp:ListItem>
<asp:ListItem Text="FAMILY LAW" Value="2"></asp:ListItem>
<asp:ListItem Text="PUBLIC LAW" Value="3"></asp:ListItem>
<asp:ListItem Text="CRIMINAL LAW" Value="4"></asp:ListItem>
<asp:ListItem Text="JURISPUDENCE" Value="5"></asp:ListItem>
<asp:ListItem Text="CONSTITUTIONAL LAW" Value="6"></asp:ListItem>
<asp:ListItem Text="PROPERTY LAW" Value="7"></asp:ListItem>
<asp:ListItem Text="LABOR LAW" Value="8"></asp:ListItem>
<asp:ListItem Text="COMPANY LAW" Value="9"></asp:ListItem>
<asp:ListItem Text="SOCIOLOGY" Value="10"></asp:ListItem>
<asp:ListItem Text="POLITICAL SCIENCE" Value="11"></asp:ListItem>
<asp:ListItem Text="HISTORY" Value="12"></asp:ListItem>
<asp:ListItem Text="ENGLISH" Value="13"></asp:ListItem>
<asp:ListItem Text="LAW OF EVIDENCE" Value="14"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlcanotes" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl"  runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="Financial Reporting" Value="1"></asp:ListItem>
<asp:ListItem Text="Strategic Financial Management" Value="2"></asp:ListItem>
<asp:ListItem Text="Advanced auditing and professional ethics" Value="3"></asp:ListItem>
<asp:ListItem Text="Corporate Laws and Other Economic Laws" Value="4"></asp:ListItem>
<asp:ListItem Text="Advanced Management Accounting" Value="5"></asp:ListItem>
<asp:ListItem Text="Financial Services & Capital Markets and Information systems control & Audit" Value="6"></asp:ListItem>
<asp:ListItem Text="Advanced Tax Laws & International Taxation" Value="7"></asp:ListItem>
<asp:ListItem Text="Advanced Indirect Tax Laws" Value="8"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlothers" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="BSC-MATHEMATICS" Value="1"></asp:ListItem>
<asp:ListItem Text="BSC-PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="BSC-BIOLOGY" Value="3"></asp:ListItem>
<asp:ListItem Text="BSC-CHEMISTRY" Value="4"></asp:ListItem>
<asp:ListItem Text="BA-HISTORY" Value="5"></asp:ListItem>
<asp:ListItem Text="BA-GEOGRAPHY" Value="6"></asp:ListItem>
<asp:ListItem Text="BA-POLITICAL SCIENCE" Value="7"></asp:ListItem>
<asp:ListItem Text="BA-SOCIOLOGY" Value="8"></asp:ListItem>
<asp:ListItem Text="BA-PSYCHOLOGY" Value="9"></asp:ListItem>
</asp:DropDownList>
</td>
<td>
<asp:Button ID="btnSearch" CssClass="button" Text="SEARCH" runat="server" OnClick="btnSearch_Click" />
</td>
</tr>
</table>
<table align="center" width="150%">
<tr>
<td align="center"><br />
<asp:Label ID="lblMsg" runat="server" Font-Bold="true" Text=""  ForeColor="Red"></asp:Label>
</td>
</tr>
</table>
<table align="center">
<tr>
<td>
<br />
 
 <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="mydatagrid" 
            AutoGenerateColumns="false" Font-Names="Arial" RowStyle-VerticalAlign="Top"
            Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B"
            HeaderStyle-BackColor="lightgreen" AllowPaging="true"
            OnPageIndexChanging="OnPaging1" valign="center"
            PageSize="10" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" BorderStyle="None" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
            <PagerSettings Mode="NumericFirstLast"
                FirstPageText="First"
                LastPageText="Last"
                NextPageText="Next"
                PreviousPageText="Prev" Position="TopAndBottom" />
            <PagerStyle Font-Size="Large" />
            <Columns >
            <asp:TemplateField ItemStyle-Width="100px" HeaderText="">
                    <ItemTemplate>
                       <asp:Image ID="imgnote" runat="server" Height="100px" Width="100px" />
                    </ItemTemplate>

                </asp:TemplateField>
             <asp:TemplateField ItemStyle-Width="30px" HeaderText="PRODUCT ID">
                    <ItemTemplate>
                        <asp:Label ID="lblnoteid" runat="server" Text='<%# Eval("note_id")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>
               <asp:TemplateField ItemStyle-Width="30px" HeaderText="TITLE">
                    <ItemTemplate>
                        <asp:Label ID="lbltitle" runat="server" Text='<%# Eval("title")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="30px" HeaderText="AUTHOR">
                    <ItemTemplate>
                        <asp:Label ID="lblauthor" runat="server" Text='<%# Eval("author")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField ItemStyle-Width="30px" HeaderText="DATE UPLOADED">
                    <ItemTemplate>
                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("up_date")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField ItemStyle-Width="30px" HeaderText="PRICE">
                    <ItemTemplate>
                        <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>
                  <asp:TemplateField ItemStyle-Width="30px" HeaderText="">
                    <ItemTemplate>
                   <asp:hyperlink id="hyplnk" Target="_blank" text="PREVIEW" runat="server" ForeColor="Cyan"></asp:hyperlink>
                    </ItemTemplate>

                </asp:TemplateField>
               
                 
                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="">
                    <ItemTemplate>
                       <asp:Button ID="btnCart" runat="server" Text="ADD TO CART" OnClick="btnCart_Click" Font-Bold="true" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="AddToCart"  />
                    </ItemTemplate>

                </asp:TemplateField>

                  <asp:TemplateField ItemStyle-Width="30px" HeaderText="">
                    <ItemTemplate>
                       <asp:Button ID="btnBuy" runat="server" Text="BUY" OnClick="btnBuy_Click"  Font-Bold="true" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Buy"/>
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
            </asp:GridView>
</td>
</tr>
</table>
</div>
                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
               
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- ./box-body -->
          
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><strong>UPLOAD NOTES</strong></h3>

              <div class="box-tools pull-right">
               
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-8">
                  <p class="text-center">
                    <strong></strong>
                  </p>

                
<div align="center">
<table align="center" width="150%">
<tr>
<td>
<asp:Label ID="lbltitle" runat="server" Text="PROVIDE TITLE:" Font-Bold="true"></asp:Label>
<br/>
</td>
<td>
<asp:TextBox ID="txttitle" runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="rqtitle" runat="server" ControlToValidate="txttitle" ErrorMessage="PROVIDE TITLE" ValidationGroup="upload" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
<br/>
</td>

</tr>
<tr>
<td><asp:Label ID="Label1" runat="server" Text="SELECT GRADE:" Font-Bold="true"></asp:Label><br/></td>
<td>
<asp:DropDownList ID="ddlupgrade" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Font-Bold="true" Height="30" Width="200" AutoPostBack="true" OnSelectedIndexChanged="ddlupgrade_SelectedIndexChanged">
<asp:ListItem Text="--SELECT GRADE--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="IX-XII" Value="1"></asp:ListItem>
<asp:ListItem Text="ENGINEERING ENTRANCE" Value="2"></asp:ListItem>
<asp:ListItem Text="MEDICAL ENTRANCE" Value="3"></asp:ListItem>
<asp:ListItem Text="LAW ENTRANCE" Value="4"></asp:ListItem>
<asp:ListItem Text="ENGINEERING NOTES" Value="5"></asp:ListItem>
<asp:ListItem Text="MEDICAL NOTES" Value="6"></asp:ListItem>
<asp:ListItem Text="LAW NOTES" Value="7"></asp:ListItem>
<asp:ListItem Text="CA NOTES" Value="8"></asp:ListItem>
<asp:ListItem Text="OTHERS" Value="9"></asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlupgrade" ErrorMessage="SELECT GRADE" InitialValue="0" ValidationGroup="upload" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
</td>

<td>
<asp:DropDownList ID="ddlupsubject" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="MATHEMATICS" Value="1"></asp:ListItem>
<asp:ListItem Text="ENGLISH" Value="2"></asp:ListItem>
<asp:ListItem Text="HINDI" Value="3"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="4"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="5"></asp:ListItem>
<asp:ListItem Text="BIOLOGY" Value="6"></asp:ListItem>
<asp:ListItem Text="ECONOMICS" Value="7"></asp:ListItem>
<asp:ListItem Text="HISTORY" Value="8"></asp:ListItem>
<asp:ListItem Text="GEOGRAPHY" Value="9"></asp:ListItem>
<asp:ListItem Text="CIVICS" Value="10"></asp:ListItem>
<asp:ListItem Text="CS" Value="11"></asp:ListItem>
<asp:ListItem Text="ELECTRONICS" Value="12"></asp:ListItem>
<asp:ListItem Text="BUSINESS STUDIES" Value="13"></asp:ListItem>
<asp:ListItem Text="ACCOUNTANCY" Value="14"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlupenggentr" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="MATHEMATICS" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="3"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlupmedentr" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="BIOLOGY" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="3"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddluplawentr" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True" >
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="MATHS" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="CHEMISTRY" Value="3"></asp:ListItem>
<asp:ListItem Text="ENGLISH" Value="4"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlupstrengg" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT STREAM--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="EC/TC" Value="1"></asp:ListItem>
<asp:ListItem Text="CS/IS" Value="2"></asp:ListItem>
<asp:ListItem Text="CIVIL" Value="3"></asp:ListItem>
<asp:ListItem Text="EEE" Value="4"></asp:ListItem>
<asp:ListItem Text="MECHANICAL" Value="5"></asp:ListItem>
<asp:ListItem Text="MEDICAL ELECTRONICS" Value="6"></asp:ListItem>
<asp:ListItem Text="IEM" Value="7"></asp:ListItem>
<asp:ListItem Text="CONSTRUCTION ENGINEERING" Value="8"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlupmednotes" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="ANATOMY" Value="1"></asp:ListItem>
<asp:ListItem Text="PHYSIOLOGY" Value="2"></asp:ListItem>
<asp:ListItem Text="BIOCHEMISTRY" Value="3"></asp:ListItem>
<asp:ListItem Text="PATHOLOGY" Value="4"></asp:ListItem>
<asp:ListItem Text="MICROBIOLOGY" Value="5"></asp:ListItem>
<asp:ListItem Text="FORENSIC SCIENCES" Value="6"></asp:ListItem>
<asp:ListItem Text="OPTHALMOLOGY" Value="7"></asp:ListItem>
<asp:ListItem Text="ENT" Value="8"></asp:ListItem>
<asp:ListItem Text="PEDIATRICS" Value="9"></asp:ListItem>

</asp:DropDownList>
<asp:DropDownList ID="ddluplawnotes" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="ENVIRONMENT LAW" Value="1"></asp:ListItem>
<asp:ListItem Text="FAMILY LAW" Value="2"></asp:ListItem>
<asp:ListItem Text="PUBLIC LAW" Value="3"></asp:ListItem>
<asp:ListItem Text="CRIMINAL LAW" Value="4"></asp:ListItem>
<asp:ListItem Text="JURISPUDENCE" Value="5"></asp:ListItem>
<asp:ListItem Text="CONSTITUTIONAL LAW" Value="6"></asp:ListItem>
<asp:ListItem Text="PROPERTY LAW" Value="7"></asp:ListItem>
<asp:ListItem Text="LABOR LAW" Value="8"></asp:ListItem>
<asp:ListItem Text="COMPANY LAW" Value="9"></asp:ListItem>
<asp:ListItem Text="SOCIOLOGY" Value="10"></asp:ListItem>
<asp:ListItem Text="POLITICAL SCIENCE" Value="11"></asp:ListItem>
<asp:ListItem Text="HISTORY" Value="12"></asp:ListItem>
<asp:ListItem Text="ENGLISH" Value="13"></asp:ListItem>
<asp:ListItem Text="LAW OF EVIDENCE" Value="14"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlupcanotes" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="Financial Reporting" Value="1"></asp:ListItem>
<asp:ListItem Text="Strategic Financial Management" Value="2"></asp:ListItem>
<asp:ListItem Text="Advanced auditing and professional ethics" Value="3"></asp:ListItem>
<asp:ListItem Text="Corporate Laws and Other Economic Laws" Value="4"></asp:ListItem>
<asp:ListItem Text="Advanced Management Accounting" Value="5"></asp:ListItem>
<asp:ListItem Text="Financial Services & Capital Markets and Information systems control & Audit" Value="6"></asp:ListItem>
<asp:ListItem Text="Advanced Tax Laws & International Taxation" Value="7"></asp:ListItem>
<asp:ListItem Text="Advanced Indirect Tax Laws" Value="8"></asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="ddlupothers" BackColor="#F6F1DB" ForeColor="#7d6754" Font-Names="Andalus" CssClass="ddl" runat="server" Height="30" Width="200" Font-Bold="True">
<asp:ListItem Text="--SELECT SUBJECT--" Value="0" Selected="True"></asp:ListItem>
<asp:ListItem Text="BSC-MATHEMATICS" Value="1"></asp:ListItem>
<asp:ListItem Text="BSC-PHYSICS" Value="2"></asp:ListItem>
<asp:ListItem Text="BSC-BIOLOGY" Value="3"></asp:ListItem>
<asp:ListItem Text="BSC-CHEMISTRY" Value="4"></asp:ListItem>
<asp:ListItem Text="BA-HISTORY" Value="5"></asp:ListItem>
<asp:ListItem Text="BA-GEOGRAPHY" Value="6"></asp:ListItem>
<asp:ListItem Text="BA-POLITICAL SCIENCE" Value="7"></asp:ListItem>
<asp:ListItem Text="BA-SOCIOLOGY" Value="8"></asp:ListItem>
<asp:ListItem Text="BA-PSYCHOLOGY" Value="9"></asp:ListItem>
</asp:DropDownList>
<br/>
</td>

</tr>
<tr>
<td>
<asp:Label ID="lblPrice" runat="server" Text="PROVIDE PRICE:" Font-Bold="true"></asp:Label>
<br/>
</td>
<td>
<asp:TextBox ID="txtprice" runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtprice" ErrorMessage="PROVIDE PRICE" ValidationGroup="upload" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
<br/>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblauthor" runat="server" Text="PROVIDE AUTHOR NAME:" Font-Bold="true"></asp:Label>
<br/>
</td>
<td>
<asp:TextBox ID="txtauthor" runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtauthor" ErrorMessage="PROVIDE AUTHOR" ValidationGroup="upload" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
<br/>
</td>
</tr>
<tr>
<td><asp:Label ID="Label2" runat="server" Text="SELECT FILE:" Font-Bold="true"></asp:Label>
<br/>
</td>
<td>
<asp:FileUpload ID="flupnotes" runat="server" />


	<%--
					<asp:FileUpload runat="server" name="file-5[]" id="flupnotes" class="inputfile inputfile-4" data-multiple-caption="{count} files selected" multiple />
					<label for="file-5"><figure><svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17"><path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/></svg></figure> <span>Choose a file&hellip;</span></label>
		--%>
</td>
</tr>
</table>
<table width="150%">
<tr>
<td align="center">
<br />
<asp:Button ID="btnUpload" CssClass="button" Text="UPLOAD" runat="server" OnClick="btnUpload_Click" class="upload"
        ValidationGroup="upload" />
        
<br/>
</td>
<td>
<asp:Label ID="lblMsg1" runat="server" Font-Bold="true" Text=""  ForeColor="Red"></asp:Label>
</td>
<td>
<a id="previewpdf" runat="server" target="_blank">VIEW UPLOADED FILE</a>
</td>
</tr>
</table>

                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
               
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- ./box-body -->
           <%-- <div class="box-footer">
              <div class="row">
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block border-right">
                    <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%/i> 17%>
                    <h5 class="description-header">$35,210.43</h5>
                    <span class="description-text">TOTAL REVENUE</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block border-right">
                    <span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>
                    <h5 class="description-header">$10,390.90</h5>
                    <span class="description-text">TOTAL COST</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block border-right">
                    <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
                    <h5 class="description-header">$24,813.53</h5>
                    <span class="description-text">TOTAL PROFIT</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-3 col-xs-6">
                  <div class="description-block">
                    <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>
                    <h5 class="description-header">1200</h5>
                    <span class="description-text">GOAL COMPLETIONS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>--%>

      <!-- /.row -->

      <!-- Main row -->
   <!--   <div class="row">
        <!-- Left col -->
      <!--  <div class="col-md-8">
          <!-- MAP & BOX PANE -->
       <!--   <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title"><strong>MY NOTES</strong></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
         <!--   <div class="box-body no-padding">
              <div class="row">
                <div class="col-md-9 col-sm-8">
                  <div class="pad">
                    <!-- Map will be created here -->
                <!--    <div id="world-map-markers" style="height: 325px;"><asp:GridView ID="GridView2" runat="server" Width="130%" CssClass="mydatagrid" 
            AutoGenerateColumns="false" Font-Names="Arial" RowStyle-VerticalAlign="Top"
            Font-Size="11pt" AlternatingRowStyle-BackColor="#C2D69B"
            HeaderStyle-BackColor="lightgreen" AllowPaging="true"
            OnPageIndexChanging="OnPaging1" valign="center"
            PageSize="10" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" BorderStyle="None" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
            <PagerSettings Mode="NumericFirstLast"
                FirstPageText="First"
                LastPageText="Last"
                NextPageText="Next"
                PreviousPageText="Prev" Position="TopAndBottom" />
            <PagerStyle Font-Size="Large" />
            <Columns >
            <asp:TemplateField ItemStyle-Width="100px" HeaderText="">
                    <ItemTemplate>
                       <asp:Image ID="imgnote" runat="server" Height="100px" Width="100px" />
                    </ItemTemplate>

                </asp:TemplateField>
           
               <asp:TemplateField ItemStyle-Width="30px" HeaderText="TITLE">
                    <ItemTemplate>
                        <asp:Label ID="lbltitle" runat="server" Text='<%# Eval("title")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField ItemStyle-Width="30px" HeaderText="AUTHOR">
                    <ItemTemplate>
                        <asp:Label ID="lblauthor" runat="server" Text='<%# Eval("author")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField ItemStyle-Width="30px" HeaderText="DATE UPLOADED">
                    <ItemTemplate>
                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("up_date")%>'></asp:Label>

                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField ItemStyle-Width="30px" HeaderText="PRICE">
                    <ItemTemplate>
                        <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price")%>'></asp:Label>

                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField ItemStyle-Width="30px" HeaderText="">
                    <ItemTemplate>
                   <asp:hyperlink id="hyplnk" Target="_blank" text="OPEN NOTE" runat="server" ForeColor="Crimson"></asp:hyperlink>
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
            </asp:GridView></div>
                  </div>
                </div>
                <!-- /.col -->
             <!--   <div class="col-md-3 col-sm-4">
                  <div class="pad box-pane-right bg-green" style="min-height: 280px">
                    <div class="description-block margin-bottom">
                      <div class="sparkbar pad" data-color="#fff">90,70,90,70,75,80,70</div>
                      <h5 class="description-header">8390</h5>
                      <span class="description-text">Visits</span>
                    </div>
                    <!-- /.description-block -->
                <!--    <div class="description-block margin-bottom">
                      <div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>
                      <h5 class="description-header">30%</h5>
                      <span class="description-text">Referrals</span>
                    </div>
                    <!-- /.description-block -->
                   <!-- <div class="description-block">
                      <div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>
                      <h5 class="description-header">70%</h5>
                      <span class="description-text">Organic</span>
                    </div>
                    <!-- /.description-block -->
                  <!--</div>
                </div>-->
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
      
          <!-- /.row -->

          <!-- TABLE: LATEST ORDERS -->
       
          <!-- /.box -->
        </div>
        <!-- /.col -->

     <!--   <div class="col-md-4">
          <!-- Info Boxes Style 2 -->
        <!--  <div class="info-box bg-yellow">
            <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total Uploads</span>
              <span class="info-box-number">5,200</span>

              <div class="progress">
                <div class="progress-bar" style="width: 50%"></div>
              </div>
                  <span class="progress-description">
                    50% Increase in 30 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
    <!--      <div class="info-box bg-green">
            <span class="info-box-icon"><i class="ion ion-ios-heart-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Transactions</span>
              <span class="info-box-number">92,050</span>

              <div class="progress">
                <div class="progress-bar" style="width: 20%"></div>
              </div>
                  <span class="progress-description">
                    20% Increase in 30 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
       <!--   <div class="info-box bg-red">
            <span class="info-box-icon"><i class="ion ion-ios-cloud-download-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total Downloads</span>
              <span class="info-box-number">114,381</span>

              <div class="progress">
                <div class="progress-bar" style="width: 70%"></div>
              </div>
                  <span class="progress-description">
                    70% Increase in 30 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
      <!--    <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="ion-ios-chatbubble-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Direct Messages</span>
              <span class="info-box-number">163,921</span>

              <div class="progress">
                <div class="progress-bar" style="width: 40%"></div>
              </div>
                  <span class="progress-description">
                    40% Increase in 30 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->

         
          <!-- /.box -->

          <!-- PRODUCT LIST -->
        
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.3
    </div>
    <strong>Copyright &copy; 2016 <a href="landing.aspx">Notes Cart</a>.</strong> All rights
    reserved.
  </footer>

 <%-- <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->

      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>--%>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</form>
</body>
</html>


