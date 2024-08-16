<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false displayWide=false showAnotherWayIfPresent=true>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet"/>
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.svg" type="image/svg+xml" />
	
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
	 <script>
        function togglePassword(pwdId, iconId) {
            var x = document.getElementById(pwdId);
            var v = document.getElementById(iconId);
            if (x.type === "password") {
                x.type = "text";
                v.src = "${url.resourcesPath}/img/eye.svg";
            } else {
                x.type = "password";
                v.src = "${url.resourcesPath}/img/eye-off.svg";
            }
        }
    </script>
</head>
	<body class="login-content">
        <div class="login-box" >
            <div class="login-container">			
				<div class="login-header">
					<img class="logo" src="${url.resourcesPath}/img/logo.svg" alt="OrderRight">
				</div>
				<#nested "header">
		
				<#if displayMessage && message?has_content>
					<div class="alert alert-${message.type}">
						 <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
						 <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
						 <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
						 <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
						 <span class="message-text">${message.summary}</span>
					</div>
				</#if>
				<div class="login-inner-container">
				<#nested "form">
				</div>
			</div> 
        </div>
	</body>
</html>
</#macro>
