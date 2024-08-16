<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header"> 
   
        <div class="${properties.kcWelcomeClass!}">${msg("doUPWelcome")}</div>
        <div class="${properties.kcWelcomeTextClass!}">${msg("doUPWelcomeText")}</div>
    <#elseif section = "form">
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <input type="text" id="username" name="username" value="${username}" autocomplete="username" readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

            <div class="${properties.kcFormGroupClass!}">
                <label for="password-new" class="${properties.kcLabelClass!}">${msg("passwordNew")}</label>
                <input placeholder="Enter your password" type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}" autofocus autocomplete="new-password" />
                <label class="visibility pwd-new" id="new-pwd-vi" onclick="togglePassword('password-new', 'new-pwd')"><img id="new-pwd" src="${url.resourcesPath}/img/eye-off.svg"></label>  
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <label for="password-confirm" class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                <input placeholder="Enter your password" type="password" id="password-confirm" name="password-confirm" class="${properties.kcInputClass!}" autocomplete="new-password" />
                <label class="visibility pwd-conf" id="new-pwd-conf-vi" onclick="togglePassword('password-confirm', 'new-pwd-conf')"><img id="new-pwd-conf" src="${url.resourcesPath}/img/eye-off.svg"></label>  
            </div>

            <div class="${properties.kcFormPwdInstClass!}">                
                ${kcSanitize(msg("passwordInstructionsHtml"))?no_esc}
            </div>

            <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                <#if isAppInitiatedAction??>
                <div class="${properties.kcFormGroupClass!} ${properties.kcFormResetPwdSettingClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doUpdatePassword")}" />
                </div>
                <div class="${properties.kcFormGroupClass!}">                    
                    <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
                </div>
                
                <#else>
                <div class="${properties.kcFormGroupClass!} ${properties.kcFormResetPwdSettingClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doUpdatePassword")}" />
                </div>
                </#if>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
