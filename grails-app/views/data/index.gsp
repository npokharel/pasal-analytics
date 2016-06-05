<g:applyLayout name="main">

    <h1 class="page-header">Dashboard</h1>

    <g:render template="/layouts/placeholders"/>

    <h2 class="sub-header">Account Statement</h2>
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>

                <th>S.No</th>
                <th>Date</th>
                <th>Description</th>
                <th>Credit</th>
                <th>Debit</th>
                <th>Balance</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${statement}" var="s">
                <tr>
                    <td>${s.id}</td>
                    <td>${s.txnDate}</td>
                    <td>${s.description}</td>
                    <td>${s.credit}</td>
                    <td>${s.debit}</td>
                    <td>${s.balance}</td>
                </tr>

            </g:each>
            %{--<g:paginate controller="data" action="list" total="${statementCount}" />--}%



            %{--<tr>
                <td>1,001</td>
                <td>Lorem</td>
                <td>ipsum</td>
                <td>dolor</td>
                <td>sit</td>
            </tr>
            <tr>
                <td>1,002</td>
                <td>amet</td>
                <td>consectetur</td>
                <td>adipiscing</td>
                <td>elit</td>
            </tr>
            <tr>
                <td>1,003</td>
                <td>Integer</td>
                <td>nec</td>
                <td>odio</td>
                <td>Praesent</td>
            </tr>
            <tr>
                <td>1,004</td>
                <td>dapibus</td>
                <td>diam</td>
                <td>Sed</td>
                <td>nisi</td>
            </tr>
            <tr>
                <td>1,005</td>
                <td>Nulla</td>
                <td>quis</td>
                <td>sem</td>
                <td>at</td>
            </tr>--}%


            </tbody>
        </table>
            <div class="pagination">
                <g:paginate controller="data" action="index" total="${statementCount}" />

            </div>
    </div>
</g:applyLayout>