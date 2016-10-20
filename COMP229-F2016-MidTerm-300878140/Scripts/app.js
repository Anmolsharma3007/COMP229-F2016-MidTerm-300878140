/* Name:Anmol Sharma
     Student ID: 300878140
     Date:19 October,2016 
     app.css file */



$(document).ready(function () {

    console.log("app started");

    $("a.btn.btn-danger.btn-sm").click(function () {
        return confirm("Are you sure you want to delete this record?");
    });
});