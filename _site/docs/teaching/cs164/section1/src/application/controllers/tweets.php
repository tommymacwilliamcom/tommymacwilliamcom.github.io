<?php

class Tweets extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Tag');
        $this->load->model('Tweet');
    }

    /**
     * Add a new tweet
     *
     */
    public function add() {
        // add new tweet
        $tweet = (object)$this->input->post();
        $result = $this->Tweet->add($tweet);

        // make sure tweet was successfully added
        if (!$result) {
            echo json_encode(array(
                'success' => false,
            ));
            exit;
        }

        // associate each tag with tweet
        foreach ($tweet->tags as $tag) {
            if ($tag) {
                $this->Tag->add(array(
                    'content' => $tag,
                    'tweet_id' => $result
                ));
            }
        }

        echo json_encode(array(
            'success' => true,
            'id' => $result
        ));
    }

    /**
     * TwitterNiter home page
     * /tweets
     *
     */
    public function index() {
        $tweets = $this->Tweet->get_newsfeed();

        $this->load->view('tweets/index.php', array(
            'tweets' => $tweets
        ));
    }

    /**
     * Search tweets by username or content
     * /tweets/search
     *
     */
    public function search() {
        // get parameters from url
        $username = (isset($_GET['username'])) ? $_GET['username'] : '';
        $content = (isset($_GET['content'])) ? $_GET['content'] : '';

        // search tweets
        $tweets = $this->Tweet->search($username, $content);

        var_dump($tweets);
        exit;
    }
}
