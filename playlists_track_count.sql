SELECT
p.Name,
COUNT(pt.TrackId)
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
JOIN Track t ON t.TrackId = pt.TrackId
GROUP BY p.Name;