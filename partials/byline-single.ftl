<#-- Everything inside the #author tags pulls data from the author -->

<section class="author-card">
    <#if user.avatar??>
        <img class="author-profile-image" src="${user.avatar!}" alt="${user.nickname!}" />
    <#else >
        <span class="avatar-wrapper">
            <#include "icons/avatar.ftl">
        </span>
    </#if>
    <section class="author-card-content">
        <h4 class="author-card-name"><a href="${context!}">${user.nickname!}</a></h4>
        <#if user.description??>
            <p>${user.description}</p>
        <#else>
            <p>Read <a href="${context!}">more posts</a> by this author.</p>
        </#if>
    </section>
</section>
<div class="post-full-footer-right">
    <a class="author-card-button" href="${context!}">Read More</a>
</div>

