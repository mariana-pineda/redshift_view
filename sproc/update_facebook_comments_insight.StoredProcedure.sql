CREATE OR REPLACE PROCEDURE purgo_ai.update_facebook_comments_insight(postid_ character varying(256), comment_id_ character varying(256), comment_message_ character varying(256), insert_dttm_ timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE purgo_ai.facebook_comments_insight
    SET comment_message = comment_message_,
        insert_dttm = insert_dttm_
    WHERE postid = postid_ AND comment_id = comment_id_;
END;
$$
