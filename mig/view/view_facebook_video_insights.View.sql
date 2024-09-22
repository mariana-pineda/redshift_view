
CREATE VIEW view_facebook_video_insights AS 
SELECT vd.video_id, 
       vd.description, 
       vd.updated_time, 
       vi.total_video_10s_views, 
       vi.total_video_15s_views, 
       vi.total_video_avg_time_watched, 
       vi.total_video_complete_views, 
       vi.total_video_impressions, 
       vi.total_video_views, 
       vi.total_video_views_autoplayed, 
       vi.total_video_views_clicked_to_play, 
       vi.total_video_views_unique
FROM purgo_ai.facebook_video_details vd
LEFT JOIN purgo_ai.facebook_video_insights vi ON CAST(vd.video_id AS STRING) = CAST(vi.videoid AS STRING)
