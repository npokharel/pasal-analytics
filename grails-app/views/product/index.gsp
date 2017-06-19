%{--
<g:applyLayout name="main">


    <h1 class="page-header">Product List</h1>

    --}%
%{--<h2 class="sub-header">Products List</h2>--}%%{--

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>

                <th>S.No</th>
                <th>Date</th>
                <th>Description</th>

            </tr>
            </thead>
            <tbody>
            <g:each in="${products}" var="s">
                <tr>
                    <td>${s.id}</td>
                    <td>${s.name}</td>
                    <td>${s.price}</td>

                </tr>

            </g:each>

            </tbody>
        </table>
        <div class="pagination">
            <g:paginate controller="product" action="index" total="${count}" />

        </div>
    </div>


</g:applyLayout>--}%

<g:applyLayout name="page">
    <g:if test="${flash.message}">
        <g:javascript>notify('${flash.message}');</g:javascript>
    </g:if>
    <g:if test="${flash.error}">
        <g:javascript>notifydel('${flash.error}');</g:javascript>
    </g:if>
    <g:render template="list"/>

</g:applyLayout>