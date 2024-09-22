CREATE OR REPLACE PROCEDURE purgo_ai.aggregate_post_insights(post_id character varying(256), OUT total_likes bigint, OUT total_comments bigint, OUT total_shares bigint, OUT total_views bigint)
 LANGUAGE plpgsql
AS $$
BEGIN
    SELECT 
        SUM(post_likescount::BIGINT),
        SUM(post_commentscount::BIGINT),
        SUM(post_shares::BIGINT),
        SUM(total_video_views)
    INTO total_likes, total_comments, total_shares, total_views
    FROM purgo_ai.facebook_post_insights
    LEFT JOIN purgo_ai.facebook_video_insights
    ON facebook_post_insights.post_id = facebook_video_insights.videoid
    WHERE facebook_post_insights.post_id = post_id;
END;
$$
