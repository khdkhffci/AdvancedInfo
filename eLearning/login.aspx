<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="eLearn.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Learning</title>
    
    <!-- Compressed Theme CORE
This variant is to be used when loading the separate styling modules -->
    <link href="css/theme-core.min.css" rel="stylesheet"/>
    <!-- Standalone Modules
    As a convenience, we provide the entire UI framework broke down in separate modules
    Some of the standalone modules may have not been used with the current theme/module
    but ALL modules are 100% compatible -->
    <link href="css/module-essentials.min.css" rel="stylesheet" />
    <link href="css/module-material.min.css" rel="stylesheet" />
    <link href="css/module-layout.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!-- If you don't need support for Internet Explorer <= 8 you can safely remove these -->
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="login">

    <form runat="server">
    <br /><br /><br />
        <div class="row-flud">
            
            <div class="form-group col-md-4 col-md-offset-4">
                <div id="error" class="alert alert-danger" runat="server" visible="false">
                  <strong>Error !</strong> Invalid Username  Or Password.
                </div>
             <div class="modal-content">
        <div class="modal-header  bg-success" style="padding:10px 50px;" >
          <h2 style="color:#fff"><span class="glyphicon glyphicon-lock"></span> Login</h2>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
         
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" id="username" runat="server" class="form-control" placeholder="Enter email"/>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" id="password" runat="server" class="form-control" placeholder="Enter password"/>
            </div>
              <div class="form-group">
                   <div class="checkbox checkbox-success">
                                        <input id="cbxremember" runat="server"  type="checkbox" checked="checked"/>
                                        <label for="cbxremember"> Remember me</label>
                                    </div>
              </div>
            <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn-success btn-block" OnClick="btnLogin_Click"><span class='glyphicon glyphicon-off'></span> Login</asp:LinkButton>
             <br /> <p>Forgot Password ? <a href="#">Click Here</a></p>
         
        </div>
       
      </div>
             </div>
        </div>
   

       



    

        
   </form>
</body>
</html>
