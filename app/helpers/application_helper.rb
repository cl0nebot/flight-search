module ApplicationHelper
  def facebook_sdk
<<-HTML.html_safe
<script>
window.fbAsyncInit = function() {
  FB.init({
    appId      : '#{Rails.application.secrets.facebook_app_id}',
    xfbml      : true,
    version    : 'v2.8'
  });
  FB.AppEvents.logPageView();

  window.FBIsLoaded = true;
};

(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "//connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));
</script>
HTML
  end
end
