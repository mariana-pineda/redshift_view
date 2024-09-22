CREATE OR REPLACE PROCEDURE purgo_ai.update_facebook_comment_reply_insight(commentid_ character varying(256), commentmessage_ character varying(256), permalink_ character varying(256), replycount_ bigint, likecount_ bigint, reaction_ character varying(256), application_name_ character varying(256), replied_from_ character varying(256), replied_message_ character varying(256), replied_message_id_ character varying(256), insert_dttm_ timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE purgo_ai.facebook_comment_reply_insight
    SET commentmessage = commentmessage_,
        permalink = permalink_,
        replycount = replycount_,
        likecount = likecount_,
        reaction = reaction_,
        application_name = application_name_,
        replied_from = replied_from_,
        replied_message = replied_message_,
        replied_message_id = replied_message_id_,
        insert_dttm = insert_dttm_
    WHERE commentid = commentid_;
END;
$$
