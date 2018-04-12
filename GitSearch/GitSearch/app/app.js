'use strict';

var app = angular.module('git-search', []);
function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
app.controller("searchPage", function ($scope, $http) {
    $scope.showValidation = false;
    if (getCookie("term") !== "") {
        var q = getCookie("term");
        setCookie("term","",0);
        getData(q);
    }
        
    $scope.tar_url = "avatar.jpg"
    function getData(q) {
        $http.get("https://api.github.com/search/repositories?q=" + q).then(//tetris+language:assembly&sort=stars&order=desc
            function (response) {
                $scope.items = response.data.items
            },
            function () {
                $scope.validation = "can't fetch data from server";
                $scope.showValidation = true;
            }

        );
    }

    $scope.searchThis = function () {
        $scope.items = [];
        $scope.showValidation = false;
       
        var q = angular.element("#srcBtn").val();
        if (q !== "" && q !== undefined) {
            getData(q);
        } else {
            $scope.validation = "Pleas Enter A Search Term";
            $scope.showValidation = true;
            $scope.items = [];
        }
    }

    $scope.resetValidation = function () {
        $scope.showValidation = false;
    }


    $scope.onKeyPress = function (e) {
        if (e.keyCode === 13) { 
            $scope.searchThis();
        }
    };  
   
});