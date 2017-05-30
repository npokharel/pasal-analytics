%{--<script type="javascript">
    $(document).ready(function() {
        alert('okay');
    });
</script>--}%
<g:javascript>
    $(document).ready(function() {
        //alert('okay');
    });

    function updatePrice(productId){
        console.log(productId);
        $.ajax({
            type :'GET',
            url : "getProductPrice",
            data : { id : productId},
            success: function (data) {
                console.log(data);
                $("#product-price").val(data);
                //$("#product-price") = true;
            }
        });
    }
</g:javascript>
<%@ page import="com.pasal.Product" %>
<div class="page-title">
    <div class="title_left">
        <h3>Create Bill</h3>
    </div>

    <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button">Go!</button>
                </span>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>New Bill<small>Create a new Bill by entering details below</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br />
                <form id="new-product-form" data-parsley-validate class="form-horizontal form-label-left" method="POST" action="${createLink(controller: 'product', action: 'newProduct')}" enctype="multipart/form-data">
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
                        <label for="product-description" class="control-label col-md-3 col-sm-3 col-xs-12">Product Description</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="product-description" class="form-control col-md-7 col-xs-12" type="text" name="product-description">
                        </div>
                    </div>

                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button type="submit" class="btn btn-primary">Cancel</button>
                            <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>


