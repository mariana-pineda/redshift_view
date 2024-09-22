
CREATE OR REPLACE VIEW view_aggregated_post_insights AS 
SELECT 
    pd.post_id, 
    pd.createdtimestamp, 
    pd.story, 
    pd.post_message, 
    COALESCE(SUM(
        CASE
            WHEN pi.post_likescount RLIKE '^[0-9]+$' THEN CAST(pi.post_likescount AS BIGINT)
            ELSE 0
        END), 0) AS total_likes, 
    COALESCE(SUM(
        CASE
            WHEN pi.post_commentscount RLIKE '^[0-9]+$' THEN CAST(pi.post_commentscount AS BIGINT)
            ELSE 0
        END), 0) AS total_comments, 
    COALESCE(SUM(
        CASE
            WHEN pi.post_shares RLIKE '^[0-9]+$' THEN CAST(pi.post_shares AS BIGINT)
            ELSE 0
        END), 0) AS total_shares, 
    COALESCE(SUM(vi.total_video_views), 0) AS total_video_views
FROM 
    purgo_ai.facebook_post_details pd
LEFT JOIN 
    purgo_ai.facebook_post_insights pi ON pd.post_id = pi.post_id
LEFT JOIN 
    purgo_ai.facebook_video_insights vi ON pd.post_id = vi.videoid
GROUP BY 
    pd.post_id, pd.createdtimestamp, pd.story, pd.post_message
