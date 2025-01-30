create database capstone;
use capstone;
describe football;
select * from football;

-- 1. What is the Total Number of Matches Played in Each Competition?
select competition_type, count(distinct game_id) as total_matches from football group by competition_type order by total_matches desc;


-- 2. What Is the Average Attendance Per Competition?
select competition_type, round(avg(attendance), 0) AS avg_attendance from football
group by competition_type
order by avg_attendance desc;


-- 3. What Is the Total Number of Goals Scored in Each Competition?
select competition_type, sum(home_club_goals + away_club_goals) as total_goals from football 
group by competition_type 
order by total_goals desc;


-- 4. Which Competition Has the Most Competitive Matches (Small Goal Differences)?
select competition_type, count(game_id) as competitive_matches from football 
where abs(home_club_goals - away_club_goals) <= 1
group by competition_type
order by competitive_matches desc;

