select user_id, scene,sessionid,ds from 
(select  * from user_visit_log 
group by appid 
order by count(user_id) desc 
limit 10) as a
group by ds 
order by visit_time desc 
limit 1;