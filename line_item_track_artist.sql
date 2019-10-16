select i.*, t.Name, ar.Name
from InvoiceLine i
	join Track t
	on i.TrackId = t.TrackId
	join Album a
	on t.AlbumId = a.AlbumId
	join Artist ar
	on a.ArtistId = ar.ArtistId