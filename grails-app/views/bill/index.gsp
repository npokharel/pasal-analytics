<g:applyLayout name="page">
    <g:if test="${flash.message}">
        <g:javascript>notify('${flash.message}');</g:javascript>
    </g:if>
    <g:render template="list"/>
</g:applyLayout>