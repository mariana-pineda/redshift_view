CREATE OR REPLACE PROCEDURE purgo_ai.get_video_insights_by_video(video_id character varying(256), OUT view_count bigint, OUT like_count bigint, OUT comment_count bigint)
 LANGUAGE plpgsql
AS $$
BEGIN
    -- Fetch video insights
    SELECT view_count, like_count, comment_count
    INTO view_count, like_count, comment_count
    FROM purgo_ai.facebook_video_insights
    WHERE videoid = video_id;
END;
$$
