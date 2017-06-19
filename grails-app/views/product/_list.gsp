<asset:javascript src="vendors/dataTables/jquery.dataTables.min.js"/>
<asset:javascript src="vendors/dataTables/dataTables.bootstrap.min.js"/>
<asset:javascript src="vendors/dataTables/dataTables.buttons.min.js"/>
<asset:stylesheet src="vendors/dataTables/dataTables.bootstrap.min.css"/>


%{--<g:set var="msg" value="${params?.id}"></g:set>--}%
%{--<g:if test="${msg != null}">--}%
    %{--<div class="x_panel">--}%
        %{--<div class="x_content bs-example-popovers">--}%

            %{--<g:if test="${msg == 'msgadd'}">--}%
                %{--<div class="alert alert-success alert-dismissible fade in" role="alert">--}%
                    %{--<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span--}%
                            %{--aria-hidden="true">×</span>--}%
                    %{--</button>--}%
                    %{--<strong>Added.</strong> New Product has been added.--}%
                %{--</div>--}%
            %{--</g:if>--}%

            %{--<g:if test="${msg == 'msgedt'}">--}%
                %{--<div class="alert alert-info alert-dismissible fade in" role="alert">--}%
                    %{--<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span--}%
                            %{--aria-hidden="true">×</span>--}%
                    %{--</button>--}%
                    %{--<strong>Edited.</strong> Product has been edited.--}%
                %{--</div>--}%
            %{--</g:if>--}%

            %{--<g:if test="${msg == 'msgdel'}">--}%
                %{--<div class="alert alert-danger alert-dismissible fade in" role="alert">--}%
                    %{--<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span--}%
                            %{--aria-hidden="true">×</span>--}%
                    %{--</button>--}%
                    %{--<strong>Deleted.</strong> Product has been deleted.--}%
                %{--</div>--}%
            %{--</g:if>--}%

        %{--</div>--}%
    %{--</div>--}%
%{--</g:if>--}%


<div class="page-title">
    <div class="title_left">
        <h3>Products <small>Listing</small></h3>
        <h4><a class="btn-success btn-sm" href="${createLink (controller: 'product', action:'create')}"><i class="fa fa-plus"></i> New Product</a></h4>
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
    <div class="col-md-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Products</h2>
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

            <div class="x_content">

                <p>Simple table with project listing with progress and editing options</p>

                <!-- start project list -->
                <table id="datatable" class="table table-striped projects table-bordered">
                    <thead>
                    <tr>
                        <th style="width: 1%">#</th>
                        <th style="width: 20%">Product Name</th>
                        <th>Description</th>
                        <th>Product Price</th>
                        <th>Status</th>
                        <th style="width: 20%">#Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:set var="productsCounter" value="${1}"/>
                    <g:each in="${products}" var="p">
                        <tr>
                            <td>${productsCounter}</td>
                            <td>
                                <b><g:link action="show" params="${[id: p.id]}">${p.name}</g:link></b>
                                <br/>
                                <small>Created ${p?.dateCreated?.format("dd.MM.yyyy")}</small>
                            </td>
                            <td>
                                <b><a>${p?.description}</a></b>
                                <br/> <small>Updated ${p.lastUpdated?.format("MM.dd.yyyy")}</small>
                            </td>
                            <td>
                                <b><a>${p?.price}</a></b> NRS
                            </td>
                            <td>
                                <button type="button" class="btn btn-success btn-xs">OnStock</button>
                            </td>
                            <td>
                                <g:link action="show" params="${[id: p.id]}" class="btn btn-primary btn-xs"><i
                                        class="fa fa-folder"></i> View</g:link>
                                <g:link action="edit" params="${[id: p.id]}" class="btn btn-info btn-xs"><i
                                        class="fa fa-pencil"></i> Edit</g:link>
                                <g:link onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"
                                        action="delete" params="${[id: p.id]}" class="btn btn-danger btn-xs"><i
                                        class="fa fa-trash-o"></i> Delete</g:link>
                            </td>
                        </tr>
                        <g:set var="productsCounter" value="${productsCounter + 1}"/>
                    </g:each>
                    </tbody>
                </table>

                <!-- end project list -->

            </div>

        </div>
    </div>

</div>


<script>
    $(document).ready(function () {

        $('#datatable').dataTable();

    });

</script>