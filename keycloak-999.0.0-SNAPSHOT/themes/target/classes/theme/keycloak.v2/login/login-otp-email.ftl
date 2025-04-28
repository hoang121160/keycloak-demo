<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        Nhập mã OTP
    <#elseif section = "form">
        <div id="kc-form">
            <div id="kc-form-wrapper">
                <form id="kc-otp-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                    <div class="form-group">
                        <label for="otp" class="control-label">Mã OTP đã gửi về email:</label>
                        <input type="text" id="otp" name="otp" class="form-control" required autofocus />
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary btn-block" value="Xác nhận"/>
                    </div>
                </form>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
