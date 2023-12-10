<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Lỗi xảy ra</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="ErrorServlet">

        <!-- App css -->
        <link href="employer/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="employer/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="employer/assets/css/app.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body class="authentication-bg">

        <div class="account-pages mt-5 mb-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="text-center">
                            <a href="index.html">
                                <span><img src="assets/images/logo-dark.png" alt="" height="22"></span>
                            </a>
                            <p class="text-muted mt-2 mb-4">Có lỗi xảy ra khi truy cập</p>
                        </div>
                        <div class="card">

                            <div class="card-body p-4">

                                <div class="text-center">
                                    <h1 class="text-error"></h1>
                                    <h3 class="mt-3 mb-2">Không thể truy cập trang</h3>
                                    <p class="text-muted mb-3">Nếu đã cố gắng sửa lỗi nhưng không được? Hãy thử gọi hỗ trợ <a href="" class="text-dark"><b>0123456789</b></a></p>

                                    <a href="CandidateHomepageServlet" class="btn btn-danger waves-effect waves-light"><i class="fas fa-home mr-1"></i> Về trang chủ</a>
                                </div>
    

                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end page -->
    

        <!-- Vendor js -->
        <script src="assets/js/vendor.min.js"></script>

        <!-- App js -->
        <script src="assets/js/app.min.js"></script>
        
    </body>
</html>