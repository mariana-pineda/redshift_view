CREATE OR REPLACE PROCEDURE purgo_ai.get_post_details_with_insights(post_id_ character varying(256), OUT post_detail_id character varying(256), OUT post_detail_message character varying(256), OUT post_insight_likes integer, OUT post_insight_comments integer)
 LANGUAGE plpgsql
AS $$
BEGIN
    -- Fetch post details
    SELECT post_id, message
    INTO post_detail_id, post_detail_message
    FROM facebook.facebook_post_details
    WHERE post_id = post_id_;

    -- Fetch post insights
    SELECT likes, comments
    INTO post_insight_likes, post_insight_comments
    FROM purgo_ai.facebook_post_insights
    WHERE post_id = post_id_;
END;
$$
