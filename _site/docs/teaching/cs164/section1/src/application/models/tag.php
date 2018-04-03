<?php

class Tag extends CI_Model {
    /**
     * Add a new tag
     * @param $tag Object with tweet_id and content
     *
     */
    public function add($tag) {
        if ($this->db->insert('tags', $tag))
            return $this->db->insert_id();
        else
            return false; 
    }

    /**
     * Get the tags associated with tweets
     * @param $tweet_ids Array of IDs of tweets to get tags for
     * @return Array of tags indexed by tweet_id
     *
     */
    public function get_for_tweets($tweet_ids) {
        // avoid sql error when given empty array
        if (empty($tweet_ids))
            return array();

        // get tags from database
        $tags = $this->db->where_in('tweet_id', $tweet_ids)->get('tags')->result();

        // group tags by tweet id
        $result = array();
        foreach ($tags as $tag)
            $result[$tag->tweet_id][] = $tag->content;

        return $result;
    }
}
