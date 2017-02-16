-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT p.Name, COUNT(pt.TrackId)
FROM Playlist p
INNER JOIN Track t, PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
AND t.TrackId = pt.TrackId
GROUP BY p.Name