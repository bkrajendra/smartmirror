"use strict";

var ipc = require("electron").ipcRenderer;
const process = require("child_process");
const $ = require("jquery");
const path = require("path");
var moment = require("moment");

const fs = require("fs");
var { shell } = require("electron");
var intervalID;
$("#load-1").hide();
$("#load-2").hide();

function getData() {
  $("#load-2").show();
  //var pin = $("#pin").val();
  //$("#centers").html("");

  //let t_date = moment().format("DD-MM-YYYY");
  $.ajax({
    url: "http://localhost:54321/dht",
  })
    .then(function (data) {
      console.log(data);
      $("#load-2").hide();
      $("#humidity").html(data.data.humidity);
      $("#temp").html(data.data.temperature);
      $("#dp").html(data.data.dew);
    })
    .fail(function (err) {
      console.log(err);
      $("#load-2").hide();
    });
}

function getDHTData() {
  $("#load-1").show();

  $.ajax({
    url: "http://localhost:54321/dht",
  })
    .then(function (data) {
      console.log(data.data.humidity);
      $("#load-1").hide();
      $("#humidity").html(data.data.humidity);
      $("#temp").html(data.data.temperature);
      $("#dp").html(data.data.dew);
    })
    .fail(function (err) {
      console.log(err);
      $("#load-1").hide();
    });
}
intervalID = setInterval(getDHTData, 8000);
