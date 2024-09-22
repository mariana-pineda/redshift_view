CREATE OR REPLACE PROCEDURE purgo_ai.insert_facebook_video_details(description_ character varying(256), updatedtime timestamp without time zone, videoid character varying(256), insertdttm timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO purgo_ai.facebook_video_details (
        description, updated_time, video_id, insert_dttm
    )
    VALUES (
        description_, updatedtime, videoid, insertdttm
    );
END;
$$
