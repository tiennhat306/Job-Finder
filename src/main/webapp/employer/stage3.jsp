<%@ page import="DTO.EmployerSessionItem" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dalton</title>
    <link href="assets/css/stage.css" rel="stylesheet"
	type="text/css" />
	<link href="employer/assets/css/stage.css" rel="stylesheet" type="text/css" />
    <link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet" type="text/css" />
    <style>
        .col-md-6 {
              margin-bottom: 15px;
          }
  
          label {
              display: block;
              margin-bottom: 5px;
          }
          
         .button_Number {
            display: inline-block;
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px 0;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .deleteIcon {
            position: relative;
        }

        .deleteIcon input {
            width: calc(100% - 30px);
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .deleteIcon button {
            position: absolute;
            top: 50%;
            right: 0;
            transform: translateY(-50%);
            background-color: #e74c3c;
            color: #fff;
            border: none;
            padding: 8px;
            cursor: pointer;
            border-radius: 0 5px 5px 0;
        }

        .button_Number i {
            margin-right: 5px;
        }

        .button_Number h4 {
            display: inline;
            margin: 0;
        }
    </style>
    <script>
	function redirectToStage4() {
		window.location.href = "${pageContext.request.contextPath}/employer/stage4.jsp";
	}
</script>
</head>

<body>
    <%
        EmployerSessionItem employer = (EmployerSessionItem) session.getAttribute("employerSession");
        if(employer == null){
            response.sendRedirect("../ErrorServlet");
            return;
        }
    %>
    <header>
        <h1>Dalton</h1>
        <nav>
            <a href="#">Cho người tìm việc</a>
            <a href="#">Cho nhà tuyển dụng</a>
        </nav>
    </header>
    <main>
        <section class="dashboard">
            <div class="nav-info">
                <div class="icons">
                    <div class="icon">
                        <a href="/FindJobNew/index.html">1</a>
                        <p>Thông tin công việc</p>
                    </div>
                    <div class="icon">
                        <a href="/FindJobNew/stage2.html">2</a>
                        <p>Mô tả công việc</p>
                    </div>
                    <div class="icon active">
                        <a href="/FindJobNew/stage3.html">3</a>
                        <p>Phúc lợi công việc</p>
                    </div>
                    <div class="icon">
                        <a href="/FindJobNew/stage4.html">4</a>
                        <p>Thông tin liên hệ</p>
                    </div>
                    <div class="icon">
                        <a href="/FindJobNew/stage5.html">5</a>
                        <p>Lịch đăng và thanh toán</p>
                    </div>
                    <div class="icon">
                        <a href="">6</a>
                        <p>Xem lại</p>
                    </div>
                </div>
            </div>
            <div class="form_infomation">
                <form action="PostNewJobServlet" method="post" onsubmit="return fillPrize();">
                    <div class="row">
                        <h3>Phúc lợi công việc</h3>
                        <div class="col-md-6 welfare-container" id="welfareContainer">
                            <!-- Initial welfare elements and dynamically added elements will go here -->
                        </div>
                    </div>
                    <button type="button" class="button_Number" onclick="addWelfare()">
                        <i class="fas fa-plus"></i> <h4>Thêm phúc lợi</h4>
                    </button>
                    <div class="row">
                      <div class="col-md-12">
                        <input type="submit" name="buttonSaveStage3" value="Tiếp tục">
                      </div>
                    </div>
                </form>
            </div>
        </section>
    </main>
    <script>
    var welfareCounter = 1; // Initialize counter

    function deleteWelfare(element) {
        // Remove the parent div when the delete button is clicked
        element.parentElement.parentElement.remove();
    }

    function fillPrize() {
        // Retrieve values from form inputs
        var welfareElements = document.querySelectorAll('.welfare-input');
        var selectedOptions = [];

        // Iterate through welfare elements and store values in an array
        welfareElements.forEach(function (element) {
            selectedOptions.push(element.value);
        });

        // Store values in localStorage (if needed)
        localStorage.setItem('stage3_prizeBonus', JSON.stringify(selectedOptions));

        // Append the values to a hidden input field in the form
        var hiddenInput = document.createElement('input');
        hiddenInput.type = 'hidden';
        hiddenInput.name = 'welfareBenefits'; // Use an appropriate name for your attribute
        hiddenInput.value = JSON.stringify(selectedOptions);

        // Append the hidden input to the form
        document.querySelector('form').appendChild(hiddenInput);

        // Continue with form submission
        return true;
    }
    
    function addWelfare() {
        var welfareContainer = document.getElementById('welfareContainer');
        var newWelfare = document.createElement('div');
        newWelfare.className = 'col-md-12';
        newWelfare.innerHTML = '<label for="prizeBonus" class="welfare-label">Phúc lợi ' + welfareCounter + '</label>' +
            '<div class="deleteIcon">' +
            '<input type="text" name="prizeBonus" class="welfare-input">' +
            '<button class="button_Delete" onclick="deleteWelfare(this)">' +
            '<i class="fas fa-trash-alt"></i>' +
            '</button>' +
            '</div>';
        welfareCounter++;
        welfareContainer.appendChild(newWelfare);
    }
</script>
</body>
</html>
