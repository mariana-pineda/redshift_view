CREATE OR REPLACE PROCEDURE purgo_ai.insert_facebook_comment_reply_insight(comment_id character varying(256), comment_message character varying(256), perma_link character varying(256), reply_count bigint, like_count bigint, reaction_1 character varying(256), applicationname character varying(256), repliedfrom character varying(256), repliedmessage character varying(256), repliedmessage_id character varying(256), insertdttm timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO purgo_ai.facebook_comment_reply_insight (
        commentid, commentmessage, permalink, replycount, likecount, reaction, 
        application_name, replied_from, replied_message, replied_message_id, insert_dttm
    )
    VALUES (
        comment_id, comment_message, perma_link, reply_count, like_count, reaction_1, 
        applicationname, repliedfrom, repliedmessage, repliedmessage_id, insertdttm
    );
END;
$$
