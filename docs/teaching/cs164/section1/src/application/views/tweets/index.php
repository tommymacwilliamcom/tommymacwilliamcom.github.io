<!doctype html>
<html>
    <head>
        <title>TwitterNiter - The Hippest App There Ever Was</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"> 

        <link rel="stylesheet" href="/css/jquery.mobile-1.0.1.min.css" />

        <script src="/js/lib/jquery-1.7.1.min.js"></script>
        <script src="/js/lib/jquery.mobile-1.0.1.min.js"></script>
        <script src="/js/tweets/index.js"></script>
    </head>
    <body>
        <div data-role="page">
            <div data-role="header">
                <h1>TwitterNiter</h1>
            </div>
            <div data-role="content">
                <form method="post" action="/tweets/add">
                    <input type="text" id="txt-username" name="username" placeholder="Username" />
                    <br />
                    <textarea id="txt-content" name="content" placeholder="Tweety tweet tweet"></textarea>
                    <br />
                    <input type="text" id="txt-tag1" name="tag1" placeholder="Give your tweet a tag" />
                    <input type="text" id="txt-tag2" name="tag2" placeholder="Need another tag?" />
                    <input id="btn-submit" type="submit" value="Tweet!" />
                </form>

                <ul id="tweets" data-role="listview" style="margin-top: 40px">
                    <?php foreach ($tweets as $tweet): ?>
                        <li>
                            <h4><?= $tweet->username ?></h4>
                            <?= $tweet->content; ?><br />
                            <small><?= implode(', ', $tweet->tags); ?></small>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
    </body>
</html>
