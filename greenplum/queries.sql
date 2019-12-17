SELECT count(1) FROM {table}
SELECT count(1) FROM {table} WHERE AdvEngineID != 0
SELECT sum(AdvEngineID), count(1), avg(ResolutionWidth) FROM {table}
SELECT sum(UserID) FROM {table}
SELECT count(UserID) FROM ( SELECT DISTINCT UserID FROM {table} ) AS d
SELECT count(SearchPhrase) FROM ( SELECT DISTINCT SearchPhrase FROM {table} ) AS d 
SELECT min(EventDate), max(EventDate) FROM {table}
SELECT AdvEngineID, count(1) FROM {table} WHERE AdvEngineID != 0 GROUP BY AdvEngineID ORDER BY 2 DESC
SELECT RegionID, count(DISTINCT UserID) AS u FROM {table} GROUP BY RegionID ORDER BY u DESC LIMIT 10
SELECT RegionID, sum(AdvEngineID), count(1) AS c, avg(ResolutionWidth), count(DISTINCT UserID) FROM {table} GROUP BY RegionID ORDER BY c DESC LIMIT 10
SELECT MobilePhoneModel, count(DISTINCT UserID) AS u FROM {table} WHERE MobilePhoneModel != '' GROUP BY MobilePhoneModel ORDER BY u DESC LIMIT 10
SELECT MobilePhone, MobilePhoneModel, count(DISTINCT UserID) AS u FROM {table} WHERE MobilePhoneModel != '' GROUP BY MobilePhone, MobilePhoneModel ORDER BY u DESC LIMIT 10
SELECT SearchPhrase, count(1) AS c FROM {table} WHERE SearchPhrase != '' GROUP BY SearchPhrase ORDER BY c DESC LIMIT 10
SELECT SearchPhrase, count(DISTINCT UserID) AS u FROM {table} WHERE SearchPhrase != '' GROUP BY SearchPhrase ORDER BY u DESC LIMIT 10
SELECT SearchEngineID, SearchPhrase, count(1) AS c FROM {table} WHERE SearchPhrase != '' GROUP BY SearchEngineID, SearchPhrase ORDER BY c DESC LIMIT 10
SELECT UserID, count(1) FROM {table} GROUP BY UserID ORDER BY 2 DESC LIMIT 10
SELECT UserID, SearchPhrase, count(1) FROM {table} GROUP BY UserID, SearchPhrase ORDER BY 3 DESC LIMIT 10
SELECT UserID, SearchPhrase, count(1) FROM {table} GROUP BY UserID, SearchPhrase LIMIT 10
SELECT UserID, date_trunc('minute', EventTime) AS m, SearchPhrase, count(1) FROM {table} GROUP BY UserID, m, SearchPhrase ORDER BY count(1) DESC LIMIT 10
SELECT UserID FROM {table} WHERE UserID = 12345678901234567890
SELECT count(1) FROM {table} WHERE URL LIKE '%metrika%'
SELECT SearchPhrase, max(URL) as URL, count(1) AS c FROM {table} h WHERE URL LIKE '%metrika%' AND SearchPhrase != '' GROUP BY SearchPhrase ORDER BY c DESC LIMIT 10
SELECT SearchPhrase, max(URL) as URL, min(Title) as Title, count(1) AS c, count(DISTINCT UserID) FROM {table} WHERE Title LIKE '%\xd0\xaf\xd0\xbd\xd0\xb4\xd0\xb5\xd0\xba\xd1\x81%' AND URL NOT LIKE '%.yandex.%' AND SearchPhrase != '' GROUP BY SearchPhrase ORDER BY c DESC LIMIT 10;
SELECT count(1) FROM {table}
SELECT SearchPhrase FROM {table} WHERE SearchPhrase != '' ORDER BY EventTime LIMIT 10
SELECT SearchPhrase FROM {table} WHERE SearchPhrase != '' ORDER BY SearchPhrase LIMIT 10
SELECT SearchPhrase FROM {table} WHERE SearchPhrase != '' ORDER BY EventTime, SearchPhrase LIMIT 10
SELECT CounterID, avg(length(URL)) AS l, count(1) AS c FROM {table} WHERE URL != '' GROUP BY CounterID HAVING count(1) > 100000 ORDER BY l DESC LIMIT 25
SELECT Referer AS key, avg(length(Referer)) AS l, count(1) AS c, Referer FROM {table} WHERE Referer != '' GROUP BY key HAVING count(1) > 100000 ORDER BY l DESC LIMIT 25
SELECT sum(ResolutionWidth), sum(ResolutionWidth + 1), sum(ResolutionWidth + 2), sum(ResolutionWidth + 3), sum(ResolutionWidth + 4), sum(ResolutionWidth + 5), sum(ResolutionWidth + 6), sum(ResolutionWidth + 7), sum(ResolutionWidth + 8), sum(ResolutionWidth + 9), sum(ResolutionWidth + 10), sum(ResolutionWidth + 11), sum(ResolutionWidth + 12), sum(ResolutionWidth + 13), sum(ResolutionWidth + 14), sum(ResolutionWidth + 15), sum(ResolutionWidth + 16), sum(ResolutionWidth + 17), sum(ResolutionWidth + 18), sum(ResolutionWidth + 19), sum(ResolutionWidth + 20), sum(ResolutionWidth + 21), sum(ResolutionWidth + 22), sum(ResolutionWidth + 23), sum(ResolutionWidth + 24), sum(ResolutionWidth + 25), sum(ResolutionWidth + 26), sum(ResolutionWidth + 27), sum(ResolutionWidth + 28), sum(ResolutionWidth + 29), sum(ResolutionWidth + 30), sum(ResolutionWidth + 31), sum(ResolutionWidth + 32), sum(ResolutionWidth + 33), sum(ResolutionWidth + 34), sum(ResolutionWidth + 35), sum(ResolutionWidth + 36), sum(ResolutionWidth + 37), sum(ResolutionWidth + 38), sum(ResolutionWidth + 39), sum(ResolutionWidth + 40), sum(ResolutionWidth + 41), sum(ResolutionWidth + 42), sum(ResolutionWidth + 43), sum(ResolutionWidth + 44), sum(ResolutionWidth + 45), sum(ResolutionWidth + 46), sum(ResolutionWidth + 47), sum(ResolutionWidth + 48), sum(ResolutionWidth + 49), sum(ResolutionWidth + 50), sum(ResolutionWidth + 51), sum(ResolutionWidth + 52), sum(ResolutionWidth + 53), sum(ResolutionWidth + 54), sum(ResolutionWidth + 55), sum(ResolutionWidth + 56), sum(ResolutionWidth + 57), sum(ResolutionWidth + 58), sum(ResolutionWidth + 59), sum(ResolutionWidth + 60), sum(ResolutionWidth + 61), sum(ResolutionWidth + 62), sum(ResolutionWidth + 63), sum(ResolutionWidth + 64), sum(ResolutionWidth + 65), sum(ResolutionWidth + 66), sum(ResolutionWidth + 67), sum(ResolutionWidth + 68), sum(ResolutionWidth + 69), sum(ResolutionWidth + 70), sum(ResolutionWidth + 71), sum(ResolutionWidth + 72), sum(ResolutionWidth + 73), sum(ResolutionWidth + 74), sum(ResolutionWidth + 75), sum(ResolutionWidth + 76), sum(ResolutionWidth + 77), sum(ResolutionWidth + 78), sum(ResolutionWidth + 79), sum(ResolutionWidth + 80), sum(ResolutionWidth + 81), sum(ResolutionWidth + 82), sum(ResolutionWidth + 83), sum(ResolutionWidth + 84), sum(ResolutionWidth + 85), sum(ResolutionWidth + 86), sum(ResolutionWidth + 87), sum(ResolutionWidth + 88), sum(ResolutionWidth + 89) FROM {table}
SELECT SearchEngineID, ClientIP, count(1) AS c, sum(Refresh), avg(ResolutionWidth) FROM {table} WHERE SearchPhrase != '' GROUP BY SearchEngineID, ClientIP ORDER BY c DESC LIMIT 10
SELECT WatchID, ClientIP, count(1) AS c, sum(Refresh), avg(ResolutionWidth) FROM {table} WHERE SearchPhrase != '' GROUP BY WatchID, ClientIP ORDER BY c DESC LIMIT 10
SELECT WatchID, ClientIP, count(1) AS c, sum(Refresh), avg(ResolutionWidth) FROM {table} GROUP BY WatchID, ClientIP ORDER BY c DESC LIMIT 10
SELECT URL, count(1) AS c FROM {table} GROUP BY URL ORDER BY c DESC LIMIT 10
SELECT 1, URL, count(1) AS c FROM {table} GROUP BY 1, URL ORDER BY c DESC LIMIT 10
SELECT ClientIP AS x, ClientIP - 1, ClientIP - 2, ClientIP - 3, count(1) AS c FROM {table} GROUP BY x, ClientIP - 1, ClientIP - 2, ClientIP - 3 ORDER BY c DESC LIMIT 10
SELECT    URL,    count(1) AS PageViews FROM {table} WHERE    CounterID = 62    AND EventDate between '2013-07-01'::timestamp   AND '2013-07-31'::timestamp    AND DontCountHits =0    AND Refresh = 0    AND URL <>'' GROUP BY URL ORDER BY PageViews DESC LIMIT 10
SELECT    Title,    count(1) AS PageViews FROM {table} WHERE    CounterID = 62    AND EventDate BETWEEN '2013-07-01'::timestamp  AND '2013-07-31'::timestamp    AND DontCountHits=0    AND Refresh=0   AND Title <> '' GROUP BY Title ORDER BY PageViews DESC LIMIT 10
SELECT    URL,    count(1) AS PageViews FROM {table} WHERE    CounterID = 62    AND EventDate between '2013-07-01'::timestamp   AND '2013-07-31'::timestamp    AND Refresh = 0   AND IsLink <> 0    AND IsDownload = 0 GROUP BY URL ORDER BY PageViews DESC LIMIT 1000;
SELECT    TraficSourceID,    SearchEngineID,    AdvEngineID,   case when (SearchEngineID = 0 AND AdvEngineID = 0)  THEN Referer  ELSE '' END Src,    URL AS Dst,    count(1) AS PageViews FROM {table} WHERE    CounterID = 62    AND eventDate between '2013-07-01'::timestamp   AND '2013-07-31'::timestamp   AND Refresh = 0 GROUP BY    TraficSourceID,    SearchEngineID,    AdvEngineID,    Src,    Dst ORDER BY PageViews DESC LIMIT 1000;
SELECT    URLHash,    EventDate,    count(1) AS PageViews FROM {table} WHERE    CounterID = 62    AND  eventDate between '2013-07-01'::timestamp   AND '2013-07-31'::timestamp   AND  Refresh =0    AND TraficSourceID IN (-1, 6)    AND RefererHash = 7135345792483900000 GROUP BY    URLHash,    EventDate ORDER BY PageViews DESC LIMIT 100
SELECT    WindowClientWidth,    WindowClientHeight,    count(1) AS PageViews FROM {table} WHERE    CounterID = 62  AND  eventDate between '2013-07-01'::timestamp   AND '2013-07-31'::timestamp    AND Refresh =0    AND  DontCountHits =0    AND URLHash = 7135345792483900000 GROUP BY    WindowClientWidth,    WindowClientHeight ORDER BY PageViews DESC LIMIT 10000;
SELECT    date_trunc('minute', EventTime) AS Minute,    count(1) AS PageViews FROM {table} WHERE    CounterID = 62 AND  eventDate between '2013-07-01'::timestamp   AND '2013-07-31'::timestamp    AND Refresh =0    AND  DontCountHits =0    GROUP BY    Minute ORDER BY Minute;
