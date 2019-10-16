select t.Name as SongName,
	a.Title as AlbumTitle,
	m.Name as MediaType,
	g.Name as Genre
from Track t
	join Album a
	on t.AlbumId = a.AlbumId
	join MediaType m
	on t.MediaTypeId = m.MediaTypeId
	join Genre g
	on t.GenreId = g.GenreId