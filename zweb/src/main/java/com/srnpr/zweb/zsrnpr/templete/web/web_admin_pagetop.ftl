
<#assign keys=PageConfig?keys>
<#list keys as key>
${key}---${PageConfig[key]}
</#list>

