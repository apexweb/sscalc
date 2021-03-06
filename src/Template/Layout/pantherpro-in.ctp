<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @since         0.10.0
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = 'SMS | SCREEN MANAGEMENT SYSTEM';
$role = $authUser['role'];

?>


<!DOCTYPE html>
<html>
<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="SMS | Screen Management System">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="/assets/images/favicon_1.ico">

    <title>
        <?= $cakeDescription ?>:
        <?= $this->fetch('title') ?>
    </title>

    <?= $this->Html->meta('icon') ?>

    <?= $this->fetch('meta') ?>

    <?= $this->element('Layout/cssfiles') ?>

    <?= $this->fetch('css') ?>

    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <?= $this->Html->script('/assets/js/modernizr.min.js') ?>

</head>

<body class="fixed-left-void widescreen">

<!-- Begin page -->
<div id="wrapper">

    <!-- Top Bar Start -->
    <div class="topbar">
        <!-- LOGO -->
        <div class="topbar-left">
            <div class="text-center">
                <?= $this->Html->link('<i class="md-local-parking icon-c-logo"></i><span>SMS Screen Management System', '/', ['class' => 'logo', 'escape' => false]) ?>
            </div>
        </div>

        <!-- Button mobile view to collapse sidebar menu -->
        <div class="navbar navbar-default" role="navigation">
            <div class="container">
                <ul class="nav navbar-nav navbar-right pull-right">

                    <li class="dropdown">

                        <a href="" class="dropdown-toggle profile" data-toggle="dropdown" aria-expanded="true">
                            <span class="profile-name">Howdy, <?= $authUser['username']; ?></span>
                            <?= $this->Html->image('/assets/images/users/avatar-1.jpg', ['alt' => 'user-img', 'class' => 'img-circle']) ?>
                        </a>


                        <ul class="dropdown-menu">
                            <li><?= $this->Html->link('<i class="ti-user m-r-5"></i> <span> Edit Profile </span>', ['controller' => 'users', 'action' => 'edit', $authUser['id']], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                            <li><?= $this->Html->link('<i class="ti-power-off m-r-5 logout-icon"></i> <span> Log out </span>', ['controller' => 'users', 'action' => 'logout'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                        </ul>
                    </li>

                </ul>

                <div class="custom-nav hidden-sm hidden-xs">
                    <ul>
                        <?php if ($role == 'manufacturer'): ?>
                            <li><a href="#">Orders</a>
                                <ul>
                                    <li><?= $this->Html->link('<span> Orders Scheduler </span>', ['controller' => 'quotes', 'action' => 'scheduler'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Add Quote </span>', ['controller' => 'quotes', 'action' => 'roleselect'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> All Orders </span>', ['controller' => 'quotes', 'action' => 'orders'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Master Calculator Values </span>', ['controller' => 'mcvalues', 'action' => 'index'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Drop Down Values </span>', ['controller' => 'dropdowns', 'action' => 'index'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> My Quotes </span>', ['controller' => 'quotes', 'action' => 'myquotes'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                </ul>
                            </li>
                            <li><a href="#">Combined Stocks</a>
                                <ul>
                                    <li><?= $this->Html->link('<span> All Combined Stocks </span>', ['controller' => 'stocks', 'action' => 'index'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Add Order Materials </span>', ['controller' => 'stocks', 'action' => 'orderslist'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                </ul>
                            </li>

                            <li><?= $this->Html->link('Parts', ['controller' => 'parts', 'action' => 'index']) ?></li>


                        <?php elseif ($role == 'factory'): ?>
                            <li class="partsli"><a href="#">Parts</a>
                                <ul>
                                    <li><?= $this->Html->link('<span> All Parts </span>', ['controller' => 'parts', 'action' => 'all'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Manufacturer\'s Parts </span>', ['controller' => 'parts', 'action' => 'selectmf'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Add New </span>', ['controller' => 'parts', 'action' => 'add'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                </ul>
                            </li>
                            <li><a href="#">Manufacturers</a>
                                <ul>
                                    <li><?= $this->Html->link('<span> All Users </span>', ['controller' => 'users', 'action' => 'index'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> All Manufacturers </span>', ['controller' => 'users', 'action' => 'manufacturers'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Add New Manufacturer </span>', ['controller' => 'users', 'action' => 'addmanufacturer'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Add New User </span>', ['controller' => 'users', 'action' => 'add'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                </ul>
                            </li>

                        <?php elseif ($role == 'admin'): ?>

                            <li><a href="#">Users</a>
                                <ul>
                                    <li><?= $this->Html->link('<span> All Users </span>', ['controller' => 'users', 'action' => 'index'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Add New User </span>', ['controller' => 'users', 'action' => 'add'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                </ul>
                            </li>

                        <?php elseif ($role == 'distributor' || $role == 'wholesaler' || $role == 'retailer'): ?>

                            <li><a href="#">Quotes</a>
                                <ul>
                                    <li><?= $this->Html->link('<span> All Quotes </span>', ['controller' => 'Quotes', 'action' => 'index'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                    <li><?= $this->Html->link('<span> Add Quote </span>', ['controller' => 'Quotes', 'action' => 'add'], ['class' => 'waves-effect', 'escape' => false]) ?></li>
                                </ul>
                            </li>

                        <?php endif; ?>


                        <?php if ($role): ?>
                            <li><?= $this->Html->link('Important Info', ['controller' => 'pages', 'action' => 'importantinfo']) ?></li>
                        <?php endif; ?>

                        <li class="about"><?= $this->Html->link('About', ['controller' => 'pages', 'action' => 'display']); ?></li>
                    </ul>
                </div>
                <!--                </div>-->
                <!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <!-- Top Bar End -->


    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="container">


                <div class="row">
                    <div class="col-sm-12">
                        <!--                        <div class="card-box">-->
                        <?= $this->Flash->render() ?>
                        <?= $this->fetch('content') ?>
                        <!--                        </div>-->
                    </div>
                </div>


            </div> <!-- container -->

        </div> <!-- content -->

        <footer class="footer">
            2017 © SMS | SCREEN MANAGEMENT SYSTEM.
        </footer>
    </div>
</div>

<script>
    var resizefunc = [];
</script>

<!-- jQuery  -->
<?= $this->element('Layout/jsfiles') ?>

<?= $this->fetch('script') ?>


</body>
</html>