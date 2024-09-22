
CREATE OR REPLACE VIEW view_detailed_video_insights AS
SELECT 
  vd.video_id, 
  vd.description, 
  vd.updated_time, 
  COALESCE(SUM(vi.total_video_10s_views), 0) AS total_10s_views, 
  COALESCE(SUM(vi.total_video_15s_views), 0) AS total_15s_views, 
  COALESCE(AVG(vi.total_video_avg_time_watched), 0) AS avg_time_watched, 
  COALESCE(SUM(vi.total_video_complete_views), 0) AS complete_views, 
  COALESCE(SUM(vi.total_video_impressions), 0) AS impressions, 
  COALESCE(SUM(vi.total_video_views), 0) AS total_views, 
  COALESCE(SUM(vi.total_video_views_autoplayed), 0) AS autoplayed_views, 
  COALESCE(SUM(vi.total_video_views_clicked_to_play), 0) AS clicked_to_play_views, 
  COALESCE(SUM(vi.total_video_views_unique), 0) AS unique_views
FROM 
  purgo_ai.facebook_video_details vd
LEFT JOIN 
  purgo_ai.facebook_video_insights vi 
ON 
  vd.video_id = vi.videoid
GROUP BY 
  vd.video_id, 
  vd.description, 
  vd.updated_time
