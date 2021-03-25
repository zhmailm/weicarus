<footer class="card">
    <div class="container">
        <div class="level">
            <div class="level-start has-text-centered-mobile">
                <p class="is-size-7">
                    &copy; ${.now?string('yyyy')} ${user.nickname!}&nbsp;
                   
                </p>
            </div>
            <div class="level-end">
                <div class="field has-addons is-flex-center-mobile has-mt-5-mobile is-flex-wrap is-flex-middle">
                    ${settings.links_footer!}
                </div>
            </div>
        </div>
    </div>
</footer>


<!-- 点击过滤 弹出抽屉 -->
<#--<div id="sq_drawer">-->
<#--  	<span class="column has-text-centered has-text-primary" >-->
<#--    	<i class="fa fa-times-circle fa-2x " onclick="close_user_info()"></i>-->
<#--  	</span>-->
<#--	<#if settings.sidebar_profile!true>-->
<#--    	<#include "../widget/profile.ftl">-->
<#--	</#if>-->
<#--</div>-->