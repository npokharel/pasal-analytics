<div class="span10">
    <div class="panel panel-primary">
        <div class="panel-heading">Enter Product Details</div>
        <div class="panel-body">
            <form accept-charset="UTF-8" action="create" class="simple_form form-horizontal" enctype="multipart/form-data" id="new_product" method="post">

                <div class="form-group required "><label class="required col-sm-3 control-label" for="new_product_name"><abbr title="required">*</abbr> Product Name</label><div class="col-sm-9"><input class="string required form-control" id="new_product_name" name="product_name" placeholder="Product Name" type="text" required autofocus /><p class="help-block">Name of the Product here</p></div></div>
                <div class="form-group required"><label class="required col-sm-3 control-label" for="new_product_price"><abbr title="required">*</abbr> Price</label><div class="col-sm-9"><input class="required form-control" id="new_product_price" name="product_price" placeholder="Product Price" type="number" required autofocus/><p class="help-block">Price of the product here</p></div></div>

                %{--<input class="btn btn-default" name="commit" type="submit" value="Create Product" />--}%
                <button class="btn btn-primary" type="submit">Create Product</button>
            </form>
        </div>
    </div>
</div>
