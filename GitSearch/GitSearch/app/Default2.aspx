<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="app_Default2" %>
<!DOCTYPE html>
<script runat="server">

  
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    <div ng-app="git-search" ng-controller="searchPage" >
  <div class="row topSpace">
    <div class="col-xs-2"></div>
    <div class="col-xs-8">
        <input id="srcBtn" type="text" runat="server" class="searchBar" placeholder="Search.." />
      <input type="button" value="Search" class="btn btn-default" ng-keypress="onKeyPress($event)"  ng-click="searchThis()"/>
    </div>
    <div class="col-xs-2"></div>
  </div>
    <div class="row topSpace">
        <div class="col-xs-2"></div>
        <div class="col-xs-8">
            <label class="not-valid" ng-show="showValidation">{{validation}}</label>  
        </div>
        <div class="col-xs-2"></div>
    </div>
  <div class="row topSpace">
    <div class="col-xs-2"></div>
    <div class="col-xs-10">
      <div class="row galleryItemsErea">
          <div class="col-xs-3 galleryItem" ng-repeat="item in items">
              <h4>{{item.name}}</h4>
              <img class="av-img" ng-src="{{item.owner.avatar_url}}" ng-if="item.owner.avatar_url != ''"/>
              <img class="av-img" ng-src="{{tar_url}}" ng-if="!item.owner.avatar_url != ''" />
              <asp:Button ID="Button2" class="btn btn-success book-button" runat="server" Text="Bookmark" OnClick="Button2_Click"  />
               <input type="hidden" id="hidDivId" runat="server" value="{{item}}" />
          </div>
          
      </div>
    </div>
  </div>

</div>











    </div>
    </form>
</body>
</html>
