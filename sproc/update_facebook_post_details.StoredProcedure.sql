CREATE OR REPLACE PROCEDURE purgo_ai.update_facebook_post_details(post_id_ character varying(256), story_ character varying(256), post_message_ character varying(256), insert_dttm_ timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE purgo_ai.facebook_post_details
    SET story = story_,
        post_message = post_message_,
        insert_dttm = insert_dttm_
    WHERE post_id = post_id_;
END;
$$
