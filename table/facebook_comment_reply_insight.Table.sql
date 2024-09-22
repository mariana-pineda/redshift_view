
CREATE TABLE purgo_ai.facebook_comment_reply_insight (
	commentid VARCHAR(255), 
	commentmessage VARCHAR(255), 
	permalink VARCHAR(255), 
	replycount BIGINT, 
	likecount BIGINT, 
	reaction VARCHAR(255), 
	application_name VARCHAR(255), 
	replied_from VARCHAR(255), 
	replied_message VARCHAR(255), 
	replied_message_id VARCHAR(255), 
	insert_dttm TIMESTAMP WITHOUT TIME ZONE
)

