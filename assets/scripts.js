$(document).ready(function () {
  $("#submit").on("submit", function (event) {
    event.preventDefault();
    var formData = $(this).serialize();

    var p1 = $("#prioritySports1").val();
    var p2 = $("#prioritySports2").val();
    var p3 = $("#prioritySports3").val();
    if (p1 === p2 && p2 === p3) {
      $("#response").html(
        "<p class='text-danger'>An error occurred. Please Choose 3 Different Choices</p>"
      );
    } else if (p1 === p2) {
      $("#response").html(
        "<p class='text-danger'>An error occurred. Choice1 and Choice2 equal</p>"
      );
    } else if (p1 === p3) {
      $("#response").html(
        "<p class='text-danger'>An error occurred. Choice1 and Choice3 equal</p>"
      );
    } else if (p2 === p3) {
      $("#response").html(
        "<p class='text-danger'>An error occurred. Choice2 and Choice3 equal</p>"
      );
    } else {
      $.ajax({
        type: "POST",
        url: "submit.php",
        data: formData,
        dataType: "json",
        success: function (response) {
          if (response.status == "success") {
            $("#response").html(
              "<p class='text-success'>" + response.message + "</p>"
            );
            alert("Form submitted successfully!");
            $("#submit")[0].reset();
            window.location.reload();
          } else if (response.status == "error") {
            $("#response").html(
              "<p class='text-danger'>" + response.message + "</p>"
            );
          }
        },
        error: function (xhr, status, error) {
          $("#response").html(
            "<p class='text-danger'>An error occurred. Please try again</p>"
          );
        },
      });
    }
  });

  $("#grade").on("change", function (event) {
    $.ajax({
      type: "GET",
      url: "fetched.php",
      dataType: "json",
      success: function (response) {
        if (response.status === "success") {
          var data = response.data;
          var html =
            "<select class='form-control' id='prioritySports1' name='prioritySports1' required>";
          html += "<option selected disabled>-Choose-</option>";
          data.forEach(function (item) {
            html +=
              "<option value=" + item.name + ">" + item.name + "</option>";
          });
          html += "</select>";
          html += "<label for='prioritySports1'>Choice 1</label>";
          $("#sports1").html(html);
        } else {
          $("#sports1").html("<p>" + response.message + "</p>");
        }
      },
      error: function (xhr, status, error) {
        console.error(error);
        $("#sports1").html("<p>An error occurred while fetching data.</p>");
      },
    });
  });

  $("#sports1").on("change", function (event) {
    var p1 = document.getElementById("prioritySports1").value;
    $.ajax({
      type: "GET",
      url: "fetched.php",
      dataType: "json",
      success: function (response) {
        if (response.status === "success") {
          var data = response.data;
          var html =
            "<select class='form-control' id='prioritySports2' name='prioritySports2' required>";
          html += "<option selected disabled>-Choose-</option>";
          data.forEach(function (item) {
            if (item.name != p1) {
              html +=
                "<option value=" + item.name + ">" + item.name + "</option>";
            }
          });
          html += "</select>";
          html += "<label for='prioritySports2'>Choice 2</label>";
          $("#sports2").html(html);
        } else {
          $("#sports2").html("<p>" + response.message + "</p>");
        }
      },
      error: function (xhr, status, error) {
        console.error(error);
        $("#sports2").html("<p>An error occurred while fetching data.</p>");
      },
    });
  });

  $("#sports2").on("change", function (event) {
    var p1 = document.getElementById("prioritySports1").value;
    var p2 = document.getElementById("prioritySports2").value;
    $.ajax({
      type: "GET",
      url: "fetched.php",
      dataType: "json",
      success: function (response) {
        if (response.status === "success") {
          var data = response.data;
          var html =
            "<select class='form-control' id='prioritySports3' name='prioritySports3' required>";
          html += "<option selected disabled>-Choose-</option>";
          data.forEach(function (item) {
            if (item.name != p1 && item.name != p2) {
              html +=
                "<option value=" + item.name + ">" + item.name + "</option>";
            }
          });
          html += "</select>";
          html += "<label for='prioritySports3'>Choice 3</label>";
          $("#sports3").html(html);
        } else {
          $("#sports3").html("<p>" + response.message + "</p>");
        }
      },
      error: function (xhr, status, error) {
        console.error(error);
        $("#sports3").html("<p>An error occurred while fetching data.</p>");
      },
    });
  });
});

$("#sports3").on("change", function (event) {
  var p3 = document.getElementById("prioritySports3").value;

  const enrollmentNo = document.getElementById("enrollmentNo").value;

  const regex = /^[0-9]{2}[A-Za-z]{3}[A-Za-z][0-9]{4}$/;
  if (regex.test(enrollmentNo)) {
  } else {
    document.getElementById("enrollmentNo").value = "";
    $("#response").html(
      "<p class='text-danger'>Enrollment Number Format Wrong " +
        enrollmentNo +
        "</p>"
    );
    alert("Enrollment Number Format Wrong");
  }
});

function validateenroll() {
  const enrollmentNo = document.getElementById("enrollmentNo").value;

  const regex = /^[0-9]{2}[A-Za-z]{3}[A-Za-z][0-9]{4}$/;
  if (regex.test(enrollmentNo)) {
    $("#response").html("<p class='text-danger'></p>");
  } else {
    $("#response").html(
      "<p class='text-danger'>Enter correct enrollment format</p>"
    );
  }
}
