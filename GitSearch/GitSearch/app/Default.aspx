<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="app_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Git Search App</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- jQuery  -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- Angular -->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="app.css">
  <script src="app.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="row topSpace">
    <div class="col-xs-2"></div>
    <div class="col-xs-10">
      <div class="row galleryItemsErea">
          <div class="col-xs-3 galleryItem" ng-repeat="item in Bookmarks">
              <h4>{{item.name}}</h4>
              <img class="av-img" ng-src="{{item.owner.avatar_url}}" ng-if="item.owner.avatar_url != ''"/>
              <img class="av-img" ng-src="{{tar_url}}" ng-if="!item.owner.avatar_url != ''"/>       
          </div>  
      </div>
    </div>
  </div>
    </div>
    </form>
</body>
</html>
