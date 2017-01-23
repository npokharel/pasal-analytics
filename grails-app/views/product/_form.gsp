%{--<div class="span10">
    <div class="panel panel-primary">
        <div class="panel-heading">Enter Product Details</div>
        <div class="panel-body">
            <g:form accept-charset="UTF-8" controller="product" action="newProduct" class="simple_form form-horizontal" enctype="multipart/form-data" id="new_product" method="post">

                <div class="form-group required "><label class="required col-sm-3 control-label" for="new_product_name"><abbr title="required">*</abbr> Product Name</label><div class="col-sm-9"><input class="string required form-control" id="new_product_name" name="product_name" placeholder="Product Name" type="text" required autofocus /><p class="help-block">Name of the Product here</p></div></div>
                <div class="form-group required"><label class="required col-sm-3 control-label" for="new_product_price"><abbr title="required">*</abbr> Price</label><div class="col-sm-9"><input class="required form-control" id="new_product_price" name="product_price" placeholder="Product Price" type="number" required autofocus/><p class="help-block">Price of the product here</p></div></div>

                --}%%{--<input class="btn btn-default" name="commit" type="submit" value="Create Product" />--}%%{--
                <button class="btn btn-primary" type="submit">Create Product</button>
            </g:form>
        </div>
    </div>
</div>--}%

<div class="page-title">
    <div class="title_left">
        <h3>Create Product</h3>
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
                <h2>New Product<small>Create a new Product by entering details below</small></h2>
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
                            <input type="text" id="product-name" name="product-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-price">Product Price<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="number" step="any" id="product-price" name="product-price" required="required" class="form-control col-md-7 col-xs-12">
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

<script type="javascript">
    $(document).ready(function() {
        alert('okay');
        $.listen('parsley:field:validate', function() {
            validateFront();
        });
        $("#new-product-form .btn").on('click', function() {
            $('#new-product-form').parsley().validate();
            validateFront();
        });
        var validateFront = function() {
            if (true === $('#new-product-form').parsley().isValid()) {
                $('.bs-callout-info').removeClass('hidden');
                $('.bs-callout-warning').addClass('hidden');
            } else {
                $('.bs-callout-info').addClass('hidden');
                $('.bs-callout-warning').removeClass('hidden');
            }
        };
    });

</script>
