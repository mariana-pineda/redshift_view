CREATE OR REPLACE PROCEDURE purgo_ai.insert_facebook_comments_insight(post_id character varying(256), commentid character varying(256), commentmessage character varying(256), insertdttm timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO purgo_ai.facebook_comments_insight (
        postid, comment_id, comment_message, insert_dttm
    )
    VALUES (
        post_id, commentid, commentmessage, insertdttm
    );
END;
$$
