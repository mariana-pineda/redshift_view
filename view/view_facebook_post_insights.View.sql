create view "view_facebook_post_insights" AS 
 SELECT pd.post_id, pd.createdtimestamp, pd.story, pd.post_message, pi.post_likescount, pi.post_commentscount, pi.post_shares
   FROM purgo_ai.facebook_post_details pd
   LEFT JOIN purgo_ai.facebook_post_insights pi ON pd.post_id::text = pi.post_id::text