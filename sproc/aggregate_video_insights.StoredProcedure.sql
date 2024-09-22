CREATE OR REPLACE PROCEDURE purgo_ai.aggregate_video_insights(video_id character varying(256), OUT total_10s_views bigint, OUT total_15s_views bigint, OUT avg_time_watched bigint, OUT complete_views bigint, OUT impressions bigint, OUT total_views bigint, OUT autoplayed_views bigint, OUT clicked_to_play_views bigint, OUT unique_views bigint)
 LANGUAGE plpgsql
AS $$
BEGIN
    SELECT 
        SUM(total_video_10s_views),
        SUM(total_video_15s_views),
        AVG(total_video_avg_time_watched),
        SUM(total_video_complete_views),
        SUM(total_video_impressions),
        SUM(total_video_views),
        SUM(total_video_views_autoplayed),
        SUM(total_video_views_clicked_to_play),
        SUM(total_video_views_unique)
    INTO total_10s_views, total_15s_views, avg_time_watched, complete_views, impressions, total_views, autoplayed_views, clicked_to_play_views, unique_views
    FROM facebook.facebook_video_insights
    WHERE videoid = video_id;
END;
$$
