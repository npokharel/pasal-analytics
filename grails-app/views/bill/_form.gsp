%{--<script type="javascript">
    $(document).ready(function() {
        alert('okay');
    });
</script>--}%
<g:javascript>
    $(document).ready(function() {
        //alert('okay');

        $("#addItem").click(function(){
            //var task = $('#task').val();
            //$("#bills").append("<li><input class='tasks' type='checkbox' /><p>" + task + "</p></li>");

            var quantity = $('#product-quantity').val();
            var productId = $('#product-name').val();
            var description = getProduct(productId);
            var unitTotal = $('#total-price').val();

            $("#bills").append("<tr><td>"+quantity+"</td><td>"+description+"</td><td>"+productId+"</td><td>"+description+"</td><td>"+unitTotal+"</td></tr>");
            $('#product-name').prop('selectedIndex',0);
            $('#product-price').val(null);
            initForm();
            $('#addItem').prop('disabled', true); //disable add button
        });
    });

    function initForm() {
        $('#product-quantity').prop('selectedIndex',0); //reset product quantity
        $('#total-price').val(null);
        $('#total-price').prop('disabled', true);

    }

    function updatePrice(productId){
        console.log(productId);
        initForm();
        $.ajax({
            type :'GET',
            url : "getProductPrice",
            data : { id : productId},
            success: function (data) {
                $("#product-price").val(data);
                $("#product-quantity").prop('disabled', false);
            }
        });
    }

    function getProduct(productId ) {
        /*var result;
        $.ajax({
            type :'GET',
            url : "getProductJSON",
            data : { id : productId},
            success: function (data) {
                console.log("data ====> ", data);
                result = data;
            }
        });

        return result;*/
        console.log("In get product ...");
        var url = "getProductJSON"
        $.getJSON( url,
                {
                    id: productId
                },
                function (data) {

                    console.log("Data" , data);
                });

    }



    function applyQuantity(quantity) {
        var price = $("#product-price").val();
        var total = price * quantity;
        $("#total-price").val(total);
        $('#addItem').prop('disabled', false); //enable add button
    }

</g:javascript>
<%@ page import="com.pasal.Product" %>
<div class="page-title">
    <div class="title_left">
        <h3>Create New Bill</h3>
    </div>

    <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
            %{--<div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button">Go!</button>
                </span>
            </div>--}%
        </div>
    </div>
</div>
<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2><small>Create a new Bill by entering details below</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>

                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br />
                <form id="new-bill-form" data-parsley-validate class="form-horizontal form-label-left" method="POST" action="${createLink(controller: 'bill', action: 'newBill')}" enctype="multipart/form-data">
                    %{--<g:form accept-charset="UTF-8" controller="product" action="newProduct" class="simple_form form-horizontal" enctype="multipart/form-data" id="new_product" method="post">--}%

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-name">Product Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            %{--<input type="text" id="product-name" name="product-name" required="required" class="form-control col-md-7 col-xs-12">--}%
                            %{--<g:select name="productId" from="${Product.findAll()}" value="id" optionKey="id" />--}%
                            <g:select class="select2_single form-control" name="product-name" from="${products}" optionValue="${it}" noSelection="['null':'Select Product ...']" optionKey="id" value="${bill?.id}"  onChange="updatePrice(this.value);" />

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-price">Product Price<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="number" step="any" id="product-price" name="product-price" disabled class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="product-quantity" class="control-label col-md-3 col-sm-3 col-xs-12">Product Quantity</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            %{--<input id="product-quantity" class="form-control col-md-7 col-xs-12" type="number" name="product-quantity">--}%
                            <g:select class="form-control col-md-7 col-xs-12" id="product-quantity"  name="product-quantity" disabled="disabled" from="${1..50}" value="${productQuantity}" noSelection="['':'- Choose Quantity -']" onChange="applyQuantity(this.value);"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="total-price" class="control-label col-md-3 col-sm-3 col-xs-12">Total Price</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="total-price" class="form-control col-md-7 col-xs-12" type="number" disabled name="total-price">
                        </div>
                    </div>

                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button type="submit" class="btn btn-primary">Cancel</button>
                            %{--<button type="submit" class="btn btn-success">Submit</button>--}%
                            <input type="button" id="addItem" class="btn btn-success" disabled value="Add" />
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <div class="row">
    <div class="col-xs-12 table">
        <table class="table table-striped" id ="bills">
            <thead>
            <tr>
                <th>Qty</th>
                <th>Product Name</th>
                <th>Product Id</th>
                <th style="width: 59%">Description</th>
                <th>Subtotal</th>
            </tr>
            </thead>
            <tbody>
            %{--
            <tr>
                <td>1</td>
                <td>Call of Duty</td>
                <td>455-981-221</td>
                <td>El snort testosterone trophy driving gloves handsome gerry Richardson helvetica tousled street art master testosterone trophy driving gloves handsome gerry Richardson
                </td>
                <td>$64.50</td>
            </tr>
            <tr>
                <td>1</td>
                <td>Need for Speed IV</td>
                <td>247-925-726</td>
                <td>Wes Anderson umami biodiesel</td>
                <td>$50.00</td>
            </tr>
            <tr>
                <td>1</td>
                <td>Monsters DVD</td>
                <td>735-845-642</td>
                <td>Terry Richardson helvetica tousled street art master, El snort testosterone trophy driving gloves handsome letterpress erry Richardson helvetica tousled</td>
                <td>$10.70</td>
            </tr>
            <tr>
                <td>1</td>
                <td>Grown Ups Blue Ray</td>
                <td>422-568-642</td>
                <td>Tousled lomo letterpress erry Richardson helvetica tousled street art master helvetica tousled street art master, El snort testosterone</td>
                <td>$25.99</td>
            </tr>--}%
            </tbody>
        </table>
    </div>
    </div>
    <div class="row">
        <!-- For occupying left column -->
        <div class="col-xs-6">
        </div>
        <!-- /.col -->
        <div class="col-xs-6">
            <p class="lead">Amount Due 2/22/2014</p>
            <div class="table-responsive">
                <table class="table">
                    <tbody>
                    <tr>
                        <th style="width:50%">Total:</th>
                        <td>250.30</td>
                    </tr>
                    <tr>
                        <th>Tax (9.3%)</th>
                        <td>10.34</td>
                    </tr>
                    <tr>
                        <th>Shipping:</th>
                        <td>5.80</td>
                    </tr>
                    <tr>
                        <th>Total:</th>
                        <td>265.24</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /.col -->
    </div>
</div>


