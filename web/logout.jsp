<!DOCTYPE html>
<html>
    <head>
        <script src="https://apis.google.com/js/client:platform.js?onload=renderButtonGoogle" async defer></script>
        <meta name="google-signin-client_id" content="505451920387-bjp942ig6tdgtr3pr9pi97f2cptennno.apps.googleusercontent.com">
        <title>cerrando sesion..</title>
    </head>
    <body>

        <div style="display: none;" id="gSignIn"></div>

        <script>
            function renderButtonGoogle() {
                gapi.signin2.render('gSignIn', {
                    'scope': 'profile email',
                    'width': 240,
                    'height': 50,
                    'longtitle': true,
                    'theme': 'dark',
                    'onsuccess': onSuccess,
                    'onfailure': onFailure
                });
            }


            function onSuccess() {
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut();
                auth2.disconnect();
                location.href = "/";
            }
            
            function onFailure(error) {
                location.href = "/";
            }


        </script>
    </body>
</html>
