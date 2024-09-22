CREATE OR REPLACE PROCEDURE purgo_ai.insert_facebook_post_details(created_timestamp timestamp without time zone, story_ character varying(256), postid character varying(256), postmessage character varying(256), insertdttm timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO purgo_ai.facebook_post_details (
        createdtimestamp, story, post_id, post_message, insert_dttm
    )
    VALUES (
        created_timestamp, story_, postid, postmessage, insertdttm
    );
END;
$$
