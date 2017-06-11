<asset:javascript src="vendors/dataTables/jquery.dataTables.min.js"/>
<asset:javascript src="vendors/dataTables/dataTables.bootstrap.min.js"/>
<asset:javascript src="vendors/dataTables/dataTables.buttons.min.js"/>
<asset:stylesheet src="vendors/dataTables/dataTables.bootstrap.min.css"/>


<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>View Product <small>Detailed Product</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Settings 1</a>
                            </li>
                            <li><a href="#">Settings 2</a>
                            </li>
                        </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>

                <div class="clearfix"></div>
            </div>
            %{-- <g:if has="${editProducts}" var="p">--}%
            <div class="x_content">
                <br>

                <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">

                    <input type="hidden" name="product-id" id="product-id" value="${product.id}">

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                               for="product-name">Product Name <span class="required"></span>
                        </label>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="product-name" name="product-name" readonly
                                   class="form-control col-md-7 col-xs-12" value="${product.name}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                               for="product-price">Product Price<span class="required"></span>
                        </label>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="number" step="any" id="product-price" name="product-price"
                                   readonly class="form-control col-md-7 col-xs-12" value="${product?.price}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="product-description"
                               class="control-label col-md-3 col-sm-3 col-xs-12">Product Description</label>

                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="product-description" class="form-control col-md-7 col-xs-12" type="text"
                                   name="product-description" value="${product?.description}" readonly>
                        </div>
                    </div>

                    <div class="ln_solid"></div>

                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <g:link action="index" class="btn btn-primary"><i
                                    class="fa fa-home"></i> Back</g:link>
                            <g:link action="edit" params="${[id: product.id]}" class="btn btn-success"><i
                                    class="fa fa-pencil"></i> Edit</g:link>
                            <g:link action="delete" params="${[id: product.id]}" class="btn btn-danger"><i
                                    class="fa fa-trash-o"></i> Delete</g:link>
                        </div>
                    </div>

                </form>
            </div>
            %{-- </g:if>
             <g:else><div class="x_content">Sorry! No Product Found.</div></g:else>--}%
        </div>
    </div>
</div>


<script>
    $(document).ready(function () {

        $('#datatable').dataTable();

    });

</script>