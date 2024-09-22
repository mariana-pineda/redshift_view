create view "view_aggregated_post_insights" AS 
 SELECT pd.post_id, pd.createdtimestamp, pd.story, pd.post_message, COALESCE(sum(
        CASE
            WHEN pi.post_likescount::text ~ '^[0-9]+$'::text THEN pi.post_likescount::numeric(18,0)
            ELSE 0::numeric
        END), 0::numeric::numeric(18,0)) AS total_likes, COALESCE(sum(
        CASE
            WHEN pi.post_commentscount::text ~ '^[0-9]+$'::text THEN pi.post_commentscount::numeric(18,0)
            ELSE 0::numeric
        END), 0::numeric::numeric(18,0)) AS total_comments, COALESCE(sum(
        CASE
            WHEN pi.post_shares::text ~ '^[0-9]+$'::text THEN pi.post_shares::numeric(18,0)
            ELSE 0::numeric
        END), 0::numeric::numeric(18,0)) AS total_shares, COALESCE(sum(vi.total_video_views), 0::bigint) AS total_video_views
   FROM purgo_ai.facebook_post_details pd
   LEFT JOIN purgo_ai.facebook_post_insights pi ON pd.post_id::text = pi.post_id::text
   LEFT JOIN purgo_ai.facebook_video_insights vi ON pd.post_id::text = vi.videoid::character varying::text
  GROUP BY pd.post_id, pd.createdtimestamp, pd.story, pd.post_message