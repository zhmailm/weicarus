<#macro navbar layout>
<nav class="navbar is-white" role="navigation" aria-label="main navigation">
    <div class="container">
		<div class="navbar-brand">
			<a class="navbar-item navbar-logo" href="${blog_url!}">
				<#if blog_logo?? && blog_logo!=''>
					<img src="${blog_logo!}" alt="${blog_title!}" height="28">
				<#else>
					${blog_title!}
				</#if>
			</a>
			<a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasic">
			  <span aria-hidden="true"></span>
			  <span aria-hidden="true"></span>
			  <span aria-hidden="true"></span>
			</a>
		</div>

		<div id="navbarBasic" class="navbar-menu">
			<@menuTag method="list">
				<#if menus?? && menus?size gt 0>
					<div class="navbar-start">
						<#list menus?sort_by('priority') as menu>
							<a class="navbar-item" href="${menu.url}" target="${menu.target!}">${menu.name}</a>
						</#list>
					</div>
				</#if>
			</@menuTag>
			<div class="navbar-end">
              	<form method="get" action="/search" >
                  <div class="navbar-item">
                	<input type="text" name="keyword"  class="navbar-item" placeholder="请输入关键字">&nbsp;&nbsp;搜索</input>
                  </div>
              </form>
<#--				<a class="navbar-item" href="javascript:;" onclick="filtration_click()">-->
<#--					<i class="fas fa-user"></i>&nbsp;&nbsp;个人信息-->
<#--				</a>-->
          	</div>
		</div>
	</div>
</nav>
</#macro>
