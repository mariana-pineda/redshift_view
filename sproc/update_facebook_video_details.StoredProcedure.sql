CREATE OR REPLACE PROCEDURE purgo_ai.update_facebook_video_details(video_id_ character varying(256), description_ character varying(256), updated_time_ timestamp without time zone, insert_dttm_ timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE purgo_ai.facebook_video_details
    SET description = description_,
        updated_time = updated_time_,
        insert_dttm = insert_dttm_
    WHERE video_id = video_id_;
END;
$$
