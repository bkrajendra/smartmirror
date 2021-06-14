"use strict";

var ipc = require("electron").ipcRenderer;
const process = require("child_process");
const $ = require("jquery");
const path = require("path");
var moment = require("moment");

const fs = require("fs");
var { shell } = require("electron");

$("#load-1").hide();

function getData() {
  $("#load-1").show();
  var pin = $("#pin").val();
  $("#centers").html("");

  let t_date = moment().format("DD-MM-YYYY");
  $.ajax({
    url:
      "https://cdn-api.co-vin.in/api/v2/appointment/sessions/calendarByPin?pincode=" +
      pin +
      "&date=" +
      t_date,
  })
    .then(function (data) {
      $("#load-1").hide();
      // $.each(data.centers, function (index, item) {
      //   var item_data = `<div class="card text-white bg-${
      //     item.fee_type === "Free" ? "success" : "secondary"
      //   } mb-2">
      //           <div class="card-header">${item.name}</div>

      //           <div class="card-body">
      //           <h5 class="card-title">${item.center_id}</h5>
      //           <p class="card-text">
      //           ${item.address}<br>
      //           ${item.pincode}
      //           <small>${item.fee_type}</small>
      //           <ul class="list-group" id="lg_${index}"></ul>
      //           </p>
      //           </div>
      //         </div>`;
      //   $("#centers").append(item_data);
      //   $("#lg_" + index).html("");
      // });
    })
    .fail(function (err) {
      console.log(err);
      $("#load-1").hide();
    });
}

intervalID = setInterval(getData, 8000);
