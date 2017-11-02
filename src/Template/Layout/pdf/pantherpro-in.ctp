<html>

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>

        body {
            font-family: "Source Sans Pro", "Helvetica Neue", Helvetica, Arial, sans-serif;
        }

        h1 {
            padding: 0;
            margin: 0;
        }

        .text-center {
            text-align: center;
        }

        p.no-margin {
            margin: 0;
            padding: 0;
        }

        .vertical-middle {
            vertical-align: middle;
        }

        .cuttings-customer-info {
            font-size: 14px;
            color: #434343;
        }

        .table {
            margin-bottom: 10px;
            background-color: #f2f2f2;
            width: 100%;
        }

        .table td,
        .table th {
            border: 1px solid #cbcbcb;
            padding: 3px 5px;
        }

        .table td {
            color: #1f1f1f;
            font-size: 13px;
        }

        .table th {
            color: #000000;
            font-size: 13px;
        }

        .font-bold {
            font-weight: bold;
        }

        span.big-span {
            font-weight: bold;
        }



    </style>
</head>


<body>

<?= $this->fetch('content') ?>

</body>

</html>


