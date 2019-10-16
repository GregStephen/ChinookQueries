select p.Name, count(*) as NumberOfSongs
from Playlist p
	join PlaylistTrack pt
	on p.PlaylistId = pt.PlaylistId
group by p.Name