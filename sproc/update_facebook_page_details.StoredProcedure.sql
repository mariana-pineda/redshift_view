CREATE OR REPLACE PROCEDURE purgo_ai.update_facebook_page_details(page_id_ bigint, page_followers_ bigint, page_fans_ bigint, insert_dttm_ timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE purgo_ai.facebook_page_details
    SET page_followers = page_followers_,
        page_fans = page_fans_,
        insert_dttm = insert_dttm_
    WHERE page_id = page_id_;
END;
$$
