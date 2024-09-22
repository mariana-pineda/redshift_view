
CREATE OR REPLACE VIEW view_facebook_comment_insights AS
SELECT ci.postid, ci.comment_id, ci.comment_message, ci.insert_dttm
FROM purgo_ai.facebook_comments_insight ci;
