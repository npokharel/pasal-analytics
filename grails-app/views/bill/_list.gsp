<asset:javascript src="vendors/dataTables/jquery.dataTables.min.js"/>
<asset:javascript src="vendors/dataTables/dataTables.bootstrap.min.js"/>
<asset:javascript src="vendors/dataTables/dataTables.buttons.min.js" />
<asset:stylesheet src="vendors/dataTables/dataTables.bootstrap.min.css"/>

<div class="page-title">
    <div class="title_left">
        <h3>Products <small>Listing </small></h3>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
                    <g:each in="${products}" var = "p">
                        <tr>
                            <td>#</td>
                            <td>
                                <b><a>${p.name}</a></b>
                                <br />
                                <small>Created ${p?.dateCreated?.format("MM.dd.yyyy")}</small>
                            </td>
                            <td>
                                <b><a>${p?.description}</a></b>
                            </td>
                            <td>
                                <b><a>${p?.price}</a></b> NRS
                            </td>
                            <td>
                                <button type="button" class="btn btn-success btn-xs">OnStock</button>
                            </td>
                            <td>
                                <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                                <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                                <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>

                <!-- end project list -->

            </div>

        </div>
    </div>

</div>


<script>
    $(document).ready(function() {

        $('#datatable').dataTable();

    });

</script>