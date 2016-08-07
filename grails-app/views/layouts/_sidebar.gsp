<div class="nav-side-menu">
    <div class="brand">Brand Logo</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

    <div class="menu-list">

        <ul id="menu-content" class="menu-content collapse out">
            <li class="${page.equals('dash')?"active":""}">
                <g:link controller="dashBoard" action="index">
                    <i class="fa fa-dashboard fa-lg" ></i> Dashboard
                </g:link>
            </li>

            <li  data-toggle="collapse" data-target="#analytics" class="${caller.equals('index')&& page.equals('data') ?"":"collapsed"} ${page.equals('data')?"active":""}" aria-expanded="${caller.equals('index') && page.equals('data')}">
                <a href="#"><i class="fa fa-line-chart fa-lg"></i>Data Analytics <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse ${caller.equals('index')&& page.equals('data') ?"in":""}" id="analytics" aria-expanded="${caller.equals('index') && page.equals('data')}">
                <g:link controller="data" action="index"><li class="${page.equals('data')?"active":""}"><i class="fa fa-database fa-lg" ></i> Data</li></g:link>
                <li><i class="fa fa-arrow-circle-down fa-lg" ></i><a href="#"> Import </a></li>
                <li><i class="fa fa-tv fa-lg" ></i><a href="#"> View</a></li>
                <li><a href="#">Monthly</a></li>
                <li><a href="#">Weekly</a></li>
                <li><a href="#">Daily</a></li>
                <li><a href="#">Yearly</a></li>
            </ul>

            <li data-toggle="collapse" data-target="#service" class="collapsed">
                <a href="#"><i class="fa fa-globe fa-lg"></i> Services <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="service">
                <li>New Service 1</li>
                <li>New Service 2</li>
                <li>New Service 3</li>
            </ul>

            <li  data-toggle="collapse" data-target="#product" class="${caller.equals('index')&& page.equals('product') ?"":"collapsed"} ${page.equals('product')?"active":""}" aria-expanded="${caller.equals('index') && page.equals('product')}">
                <a href="#"><i class="fa fa-line-chart fa-lg"></i>Product<span class="arrow"></span></a>
            </li>

            <ul class="sub-menu collapse ${page.equals('product') ?"in":""}" id="product" aria-expanded="${caller.equals('index') && page.equals('product')}">
                <g:link controller="product" action="index"><li class="${caller.equals('index') && page.equals('product')?"active":""}"><i class="fa fa-database fa-lg" ></i> List</li></g:link>
                <g:link controller="product" action="create"><li class="${page.equals('product') && caller.equals('create')?"active":""}"><i class="fa fa-arrow-circle-down fa-lg " ></i> Create New </li></g:link>
                <li><i class="fa fa-arrow-circle-down fa-lg" ></i><a href="#"> ${caller} </a></li>
                <li><i class="fa fa-arrow-circle-down fa-lg" ></i><a href="#"> ${page}</a></li>
            </ul>

            %{--<ul class="sub-menu collapse ${caller.equals('index')&& page.equals('product') ?"in":""}" id="product" aria-expanded="${caller.equals('index') && page.equals('product')}">
                --}%%{--<li>List</li>--}%%{--
                <li class="${page.equals('index')?"active":""}"><i class="fa fa-database fa-lg" ></i><g:link controller="product" action="index"> List</g:link></li>
                <li>Add New Product</li>
            </ul>--}%


            <li data-toggle="collapse" data-target="#bills" class="collapsed">
                <a href="#"><i class="fa fa-dollar fa-lg"></i> Bills <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="bills">
                <li>List</li>
                <li>Add New Bill</li>
            </ul>

            <li data-toggle="collapse" data-target="#expense" class="collapsed">
                <a href="#"><i class="fa  fa-shopping-basket fa-lg"></i> Expenditures <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="expense">
                <li>List</li>
                <li>Add New Bill</li>
            </ul>

            <li data-toggle="collapse" data-target="#inventory" class="collapsed">
                <a href="#"><i class="fa fa-list-alt  fa-lg"></i> Inventory <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="inventory">
                <li>List</li>
                <li>Add </li>
                <li>Stock </li>
            </ul>

            <li>
                <a href="#">
                    <i class="fa fa-user fa-lg"></i> Profile
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="fa fa-gears fa-lg"></i> Settings
                </a>
            </li>

        </ul>
    </div>
</div>