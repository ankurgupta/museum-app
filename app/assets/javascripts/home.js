$(function () {
  $('#datetimepicker1').datetimepicker({
    format: "D/M/YYYY h:mm:ss A",
    maxDate: new Date().toJSON().slice(0,10)
  });
});