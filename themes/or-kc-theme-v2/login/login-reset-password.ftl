<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">

		 <div class="${properties.kcWelcomeClass!}">${msg("doFPWelcome")}</div>
		 <div class="${properties.kcWelcomeTextClass!}">${msg("doFPWelcomeText")}</div>
		 
		 <script>
			function disableButton(id) {
				var x = document.getElementById(id);
				x.disabled=true;
			}
		</script>
        
    <#elseif section = "form">
		<form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post" onsubmit="kcnext.disabled = true; return true;">
			<div class="${properties.kcFormGroupClass!}">
				<label for="username" class="${properties.kcLabelClass!}">${msg("email")}</label>
				<input tabindex="1" placeholder="Enter your email" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}"  type="text" autofocus autocomplete="off" />
			</div>
           
			<div class="${properties.kcFormGroupClass!} ${properties.kcFormResetPwdSettingClass!}">
                <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                    <input id='kc-fp-next' class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="kcnext" type="submit" value="${msg("doFPSubmit")}"/>
                </div>
            </div>
            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormBackClass!}">
                        <span class="${properties.kcLinkClass!} center"><a class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>
			</div>
        </form>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
