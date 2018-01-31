<script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11&appId=1984176348504389';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    window.fbAsyncInit = function() {
        FB.init({
            appId      : '528647374137146',
            cookie     : true,
            xfbml      : true,
            version    : 'v2.11'
        });
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });

    };

    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function statusChangeCallback(response){
        if (response.status === 'connected') {
            console.log('Logged in and auth')
        }
        else {
            console.log('Not auth')
        }
    }
    function checkLoginState() {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    }

    var finished_rendering = function() {
        console.log("finished rendering plugins");
        var spinner = document.getElementById("spinner");
        spinner.removeAttribute("style");
        spinner.removeChild(spinner.childNodes[0]);
    }
    FB.Event.subscribe('xfbml.render', finished_rendering);
</script>
<center>
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="fb-login-button"
     data-max-rows="1"
     data-size="large"
     data-button-type="continue_with"
     data-show-faces="true"
     data-auto-logout-link="true"
     data-use-continue-as="true"
     scope="user_actions.books"
></span>
</center>