create view "view_facebook_page_details" AS 
 SELECT facebook_page_details.page_id, facebook_page_details.page_followers, facebook_page_details.page_fans, facebook_page_details.insert_dttm
   FROM purgo_ai.facebook_page_details