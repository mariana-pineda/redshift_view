
CREATE VIEW view_post_details_with_comment_insights AS 
SELECT pd.post_id, pd.createdtimestamp, pd.story, pd.post_message, COALESCE(count(ci.comment_id), 0) AS total_comments, COALESCE(max(ci.insert_dttm), NULL) AS last_comment_time
FROM purgo_ai.facebook_post_details pd
LEFT JOIN purgo_ai.facebook_comments_insight ci ON pd.post_id = ci.postid
GROUP BY pd.post_id, pd.createdtimestamp, pd.story, pd.post_message
