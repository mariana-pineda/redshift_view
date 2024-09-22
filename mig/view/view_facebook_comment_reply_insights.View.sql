
CREATE OR REPLACE VIEW view_facebook_comment_reply_insights AS 
SELECT 
  cri.commentid, 
  cri.commentmessage, 
  cri.permalink, 
  cri.replycount, 
  cri.likecount, 
  cri.reaction, 
  cri.application_name, 
  cri.replied_from, 
  cri.replied_message, 
  cri.replied_message_id, 
  cri.insert_dttm
FROM purgo_ai.facebook_comment_reply_insight cri;
