CREATE OR REPLACE PROCEDURE purgo_ai.insert_facebook_page_details(pageid bigint, pagefollowers bigint, pagefans bigint, insertdttm timestamp without time zone)
 LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO purgo_ai.facebook_page_details (
        page_id, page_followers, page_fans, insert_dttm
    )
    VALUES (
        pageid, pagefollowers, pagefans, insertdttm
    );
END;
$$
