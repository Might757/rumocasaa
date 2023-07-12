<?php
  session_start();
 ?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Includes -->
    <?php include_once("css_includes.php");?>


    <title>REBM</title>
  </head>

  <body>
    <?php include_once("navbar.php");?>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-3" align="center">
            </div>
            <div class="col-lg-6 col-md-6">
            <div class="alert alert-danger" id="form-message"role="alert" style="display: none;">
              Credências Inválidas. Por favor tente novamente.
            </div>
              <div id="login-content" style="display: block;">
                <form method="POST" action="db/tratarLogin.php">
                    <fieldset id="inputs">
                      <div class="form-group" align="center" id="formGroupEmail">
                          <label for="txtEmail">Email</label>
                          <input id="txtEmail" class="form-control" type="email" name="txtEmail" maxlength="50" required="">
                      </div>
                      <div class="form-group" align="center">
                          <label for="txtPassword">Password</label>
                          <input id="txtPassword" class="form-control" type="password" name="txtPassword" maxlength="100" required="">
                      </div>
                    </fieldset>
                    <fieldset id="actions" align="center">
                      <button type="submit" name="submit" id="submit">Login</button>
                    </fieldset>
                </form>
              </div>
            </div>
            <div class="col-lg-3 col-md-3" align="center">
            </div>
        </div>
    </div>
    <?php include_once("footer.php");?>



<!--script para modal -->
  <script type="text/javascript">
    $(document).ready(function() {

    $(".form-control").click(function() {
      $(this).parent().addClass("label-animate");
    });

    $(window).click(function() {
      if (!$(event.target).is('.form-control')) {
        $(".form-control").each(function() {
          if ($(this).val() == '') {
            $(this).parent().removeClass("label-animate");
          }
        });
      }
    });
    });
  </script>
  </body>
</html>
