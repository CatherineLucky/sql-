#答案
select user_id, scene, sessionid, ds from 
(select  * from user_visit_log 
group by appid                             #按app进行用户数量统计
order by count(user_id) desc               #按访问人数降序排列
limit 10) as a                             #筛选出符合条件的app及用户信息
group by ds                                #按日期进行访问场景统计
order by visit_time desc                   #按访问时间降序排列
limit 1;