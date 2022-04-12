Drop Table if Exists Item_Drops_M;
Drop Table if Exists Monster_Drop;
Drop Table if Exists Chest_Drops;
Drop Table if Exists Item_Drops_Chest;
CREATE TABLE Monster_Drop(
      MonId integer primary key autoincrement, --auto incrementing key
      Name text NOT NULL,--title of song
	  Difficulty text Not Null,
	  Lootid integer,
	  FOREIGN KEY(Lootid) references Item_Drops_M(Itemid)
      );
CREATE TABLE Item_Drops_M(
      Itemid integer primary key autoincrement, --auto incrementing key
      name text NOT NULL, --title of song
      rarity text NOT NULL, --person or persons who wrote the song
      Itype text NOT NULL, --cd this song appears on
	  chance double
      );
CREATE TABLE Chest_Drops(
      Chestid integer primary key autoincrement, --auto incrementing key
      cName text not null,
	  difficulty text NOT NULL, --person or persons who wrote the song
      Location text NOT NULL, --cd this song appears on
      DropRarity text NOT NULL, --track number of the song
      DropChance text,
	  magical boolean  
      );
Create Table Item_Drops_Chest(
	  ItemId integer,
	  Chestid integer,
	  FOREIGN KEY (ItemId) REFERENCES Item_Drops_M (ItemId),
	  FOREIGN KEY (Chestid) REFERENCES Chest_Drops (Chestid),
	  PRIMARY key (ItemId,Chestid)

);

.read Monster_data.sql
.read Item_data.sql
.read Chest_data.sql
