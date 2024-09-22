CREATE OR REPLACE PROCEDURE purgo_ai.get_comment_insights_by_post(post_id character varying(256), OUT comment_id character varying(256), OUT comment_message character varying(256), OUT comment_likes integer)
 LANGUAGE plpgsql
AS $$
BEGIN
    SELECT commentid, commentmessage, commentlikes
    INTO comment_id, comment_message, comment_likes
    FROM purgo_ai.facebook_comments_insight
    WHERE postid = post_id;
END;
$$
