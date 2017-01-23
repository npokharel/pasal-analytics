<g:applyLayout name="main">

    <h1 class="page-header">Dashboard</h1>
    <head>


    </head>


%{--<g:render template="/layouts/placeholders"/>--}%

    <script type="application/javascript">

        $(document).ready(function() {

            $('#example').DataTable( {
                "ajax": "data/objects",
                "order": [],
                "columns": [
                    { "data": "description" },
                    { "data": "balance" },
                    { "data": "checkNumber" },
                    { "data": "credit" },
                    { "data": "date" },
                    { "data": "debit" }
                ]
            } );
        } );

    </script>
    <h2 class="sub-header">Account Statement</h2>
    %{--<div class="table-responsive" id="example">--}%
        %{--<table class="table table-bordered">
            <thead>
            <tr>

                <th>S.Id</th>
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
                    <td>${s.txnValueDate.format('dd/MM/yyyy')}</td>
                    <td>${s.description}</td>
                    <td>${s.credit}</td>
                    <td>${s.debit}</td>
                    <td>${s.balance}</td>
                </tr>

            </g:each>
           </tbody>
        </table>--}%

        <table id="example" class="display compact" cellspacing="0" width="100%">
            <thead>
            <tr>
                <th>Description</th>
                <th>Balance</th>
                <th>CheckNo</th>
                <th>Credit</th>
                <th>Date</th>
                <th>Debit</th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <th>Description</th>
                <th>Balance</th>
                <th>CheckNo</th>
                <th>Credit</th>
                <th>Date</th>
                <th>Debit</th>
            </tr>
            </tfoot>
        </table>

            %{--<div class="pagination">
                <g:paginate controller="data" action="index" total="${statementCount}" />

            </div>--}%
    %{--</div>--}%

</g:applyLayout>