<?php

class Tweet extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->model('Tag');
    }

    /**
     * Add a new tweet
     * @param $tweet Object with contents and username
     *
     */
    public function add($tweet) {
        if ($this->db->insert('tweets', $tweet))
            return $this->db->insert_id();
        else
            return false; 
    }

    /**
     * Get the last 20 tweets to be posted
     *
     */
    public function get_newsfeed() {
        // get tweets
        $tweets = $this->db->limit(20)->order_by('timestamp desc')->get('tweets')->result();

        // get tags associated with tweets
        $tweet_ids = array_map(function ($e) { return $e->id; }, $tweets);
        $tags = $this->Tag->get_for_tweets($tweet_ids);

        // associate tags with tweets
        foreach ($tweets as &$tweet)
            $tweet->tags = (isset($tags[$tweet->id])) ? $tags[$tweet->id] : array();

        return $tweets;
    }

    /**
     * Search tweets by username and content
     * @param $username Username to search by
     * @param $content Content to search for
     *
     */
    public function search($username, $content) {
        if ($username)
            $this->db->or_like('username', $username);
        if ($content)
            $this->db->or_like('content', $content);

        return $this->db->get('tweets')->result();
    }
}
