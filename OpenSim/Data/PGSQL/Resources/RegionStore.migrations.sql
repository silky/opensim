﻿--:VERSION 1

CREATE TABLE prims(
	UUID varchar(255) NOT NULL Primary key,
	RegionUUID varchar(255) NULL,
	ParentID int NULL,
	CreationDate int NULL,
	Name varchar(255) NULL,
	SceneGroupID varchar(255) NULL,
	Text varchar(255) NULL,
	Description varchar(255) NULL,
	SitName varchar(255) NULL,
	TouchName varchar(255) NULL,
	ObjectFlags int NULL,
	CreatorID varchar(255) NULL,
	OwnerID varchar(255) NULL,
	GroupID varchar(255) NULL,
	LastOwnerID varchar(255) NULL,
	OwnerMask int NULL,
	NextOwnerMask int NULL,
	GroupMask int NULL,
	EveryoneMask int NULL,
	BaseMask int NULL,
	PositionX double precision NULL,
	PositionY double precision NULL,
	PositionZ double precision NULL,
	GroupPositionX double precision NULL,
	GroupPositionY double precision NULL,
	GroupPositionZ double precision NULL,
	VelocityX double precision NULL,
	VelocityY double precision NULL,
	VelocityZ double precision NULL,
	AngularVelocityX double precision NULL,
	AngularVelocityY double precision NULL,
	AngularVelocityZ double precision NULL,
	AccelerationX double precision NULL,
	AccelerationY double precision NULL,
	AccelerationZ double precision NULL,
	RotationX double precision NULL,
	RotationY double precision NULL,
	RotationZ double precision NULL,
	RotationW double precision NULL,
	SitTargetOffsetX double precision NULL,
	SitTargetOffsetY double precision NULL,
	SitTargetOffsetZ double precision NULL,
	SitTargetOrientW double precision NULL,
	SitTargetOrientX double precision NULL,
	SitTargetOrientY double precision NULL,
	SitTargetOrientZ double precision NULL
	);

CREATE TABLE primshapes(
	UUID varchar(255) NOT NULL primary key,
	Shape int NULL,
	ScaleX double precision NULL,
	ScaleY double precision NULL,
	ScaleZ double precision NULL,
	PCode int NULL,
	PathBegin int NULL,
	PathEnd int NULL,
	PathScaleX int NULL,
	PathScaleY int NULL,
	PathShearX int NULL,
	PathShearY int NULL,
	PathSkew int NULL,
	PathCurve int NULL,
	PathRadiusOffset int NULL,
	PathRevolutions int NULL,
	PathTaperX int NULL,
	PathTaperY int NULL,
	PathTwist int NULL,
	PathTwistBegin int NULL,
	ProfileBegin int NULL,
	ProfileEnd int NULL,
	ProfileCurve int NULL,
	ProfileHollow int NULL,
	State int NULL,
	Texture bytea NULL,
	ExtraParams bytea NULL
	);

CREATE TABLE primitems(
	itemID varchar(255)  NOT NULL primary key,
	primID varchar(255)  NULL,
	assetID varchar(255)  NULL,
	parentFolderID varchar(255)  NULL,
	invType int NULL,
	assetType int NULL,
	name varchar(255)  NULL,
	description varchar(255)  NULL,
	creationDate varchar(255)  NULL,
	creatorID varchar(255)  NULL,
	ownerID varchar(255)  NULL,
	lastOwnerID varchar(255)  NULL,
	groupID varchar(255)  NULL,
	nextPermissions int NULL,
	currentPermissions int NULL,
	basePermissions int NULL,
	everyonePermissions int NULL,
	groupPermissions int NULL
	);

CREATE TABLE terrain(
	RegionUUID varchar(255)  NULL,
	Revision int NULL,
	Heightfield bytea NULL
);


CREATE TABLE land(
	UUID varchar(255)  NOT NULL primary key,
	RegionUUID varchar(255)  NULL,
	LocalLandID int NULL,
	Bitmap bytea NULL,
	Name varchar(255)  NULL,
	Description varchar(255)  NULL,
	OwnerUUID varchar(255)  NULL,
	IsGroupOwned int NULL,
	Area int NULL,
	AuctionID int NULL,
	Category int NULL,
	ClaimDate int NULL,
	ClaimPrice int NULL,
	GroupUUID varchar(255)  NULL,
	SalePrice int NULL,
	LandStatus int NULL,
	LandFlags int NULL,
	LandingType int NULL,
	MediaAutoScale int NULL,
	MediaTextureUUID varchar(255)  NULL,
	MediaURL varchar(255)  NULL,
	MusicURL varchar(255)  NULL,
	PassHours double precision NULL,
	PassPrice int NULL,
	SnapshotUUID varchar(255)  NULL,
	UserLocationX double precision NULL,
	UserLocationY double precision NULL,
	UserLocationZ double precision NULL,
	UserLookAtX double precision NULL,
	UserLookAtY double precision NULL,
	UserLookAtZ double precision NULL
);

CREATE TABLE landaccesslist(
	LandUUID varchar(255)  NULL,
	AccessUUID varchar(255)  NULL,
	Flags int NULL
);

--:VERSION 2

BEGIN TRANSACTION;

CREATE TABLE regionban (
	regionUUID VARCHAR(36) NOT NULL, 
	bannedUUID VARCHAR(36) NOT NULL, 
	bannedIp VARCHAR(16) NOT NULL, 
	bannedIpHostMask VARCHAR(16) NOT NULL
	);

create table regionsettings (
	regionUUID varchar(36) not null primary key,
	block_terraform boolean not null,
	block_fly boolean not null,
	allow_damage boolean not null,
	restrict_pushing boolean not null,
	allow_land_resell boolean not null,
	allow_land_join_divide boolean not null,
	block_show_in_search boolean not null,
	agent_limit int not null,
	object_bonus double precision not null,
	maturity int not null,
	disable_scripts boolean not null,
	disable_collisions boolean not null,
	disable_physics boolean not null,
	terrain_texture_1 varchar(36) not null,
	terrain_texture_2 varchar(36) not null,
	terrain_texture_3 varchar(36) not null,
	terrain_texture_4 varchar(36) not null,
	elevation_1_nw double precision not null,
	elevation_2_nw double precision not null,
	elevation_1_ne double precision not null,
	elevation_2_ne double precision not null,
	elevation_1_se double precision not null,
	elevation_2_se double precision not null,
	elevation_1_sw double precision not null,
	elevation_2_sw double precision not null,
	water_height double precision not null,
	terrain_raise_limit double precision not null,
	terrain_lower_limit double precision not null,
	use_estate_sun boolean not null,
	fixed_sun boolean not null,
	sun_position double precision not null,
	covenant varchar(36) default NULL,
	Sandbox boolean NOT NULL
	);

COMMIT;

--:VERSION 3

BEGIN TRANSACTION;

CREATE TABLE Tmp_prims
	(
	UUID varchar(36) NOT NULL ,
	RegionUUID varchar(36) NULL,
	ParentID int NULL,
	CreationDate int NULL,
	Name varchar(255) NULL,
	SceneGroupID varchar(36) NULL,
	Text varchar(255) NULL,
	Description varchar(255) NULL,
	SitName varchar(255) NULL,
	TouchName varchar(255) NULL,
	ObjectFlags int NULL,
	CreatorID varchar(36) NULL,
	OwnerID varchar(36) NULL,
	GroupID varchar(36) NULL,
	LastOwnerID varchar(36) NULL,
	OwnerMask int NULL,
	NextOwnerMask int NULL,
	GroupMask int NULL,
	EveryoneMask int NULL,
	BaseMask int NULL,
	PositionX double precision NULL,
	PositionY double precision NULL,
	PositionZ double precision NULL,
	GroupPositionX double precision NULL,
	GroupPositionY double precision NULL,
	GroupPositionZ double precision NULL,
	VelocityX double precision NULL,
	VelocityY double precision NULL,
	VelocityZ double precision NULL,
	AngularVelocityX double precision NULL,
	AngularVelocityY double precision NULL,
	AngularVelocityZ double precision NULL,
	AccelerationX double precision NULL,
	AccelerationY double precision NULL,
	AccelerationZ double precision NULL,
	RotationX double precision NULL,
	RotationY double precision NULL,
	RotationZ double precision NULL,
	RotationW double precision NULL,
	SitTargetOffsetX double precision NULL,
	SitTargetOffsetY double precision NULL,
	SitTargetOffsetZ double precision NULL,
	SitTargetOrientW double precision NULL,
	SitTargetOrientX double precision NULL,
	SitTargetOrientY double precision NULL,
	SitTargetOrientZ double precision NULL
	);

INSERT INTO Tmp_prims (UUID, RegionUUID, ParentID, CreationDate, Name, SceneGroupID, Text, Description, SitName, TouchName, ObjectFlags, CreatorID, OwnerID, GroupID, LastOwnerID, OwnerMask, NextOwnerMask, GroupMask, EveryoneMask, BaseMask, PositionX, PositionY, PositionZ, GroupPositionX, GroupPositionY, GroupPositionZ, VelocityX, VelocityY, VelocityZ, AngularVelocityX, AngularVelocityY, AngularVelocityZ, AccelerationX, AccelerationY, AccelerationZ, RotationX, RotationY, RotationZ, RotationW, SitTargetOffsetX, SitTargetOffsetY, SitTargetOffsetZ, SitTargetOrientW, SitTargetOrientX, SitTargetOrientY, SitTargetOrientZ)
	SELECT cast(UUID as varchar(36)), cast(RegionUUID as varchar(36)), ParentID, CreationDate, Name, cast(SceneGroupID as varchar(36)), Text, Description, SitName, TouchName, ObjectFlags, cast(CreatorID as varchar(36)), cast(OwnerID as varchar(36)), cast( GroupID as varchar(36)), cast(LastOwnerID as varchar(36)), OwnerMask, NextOwnerMask, GroupMask, EveryoneMask, BaseMask, PositionX, PositionY, PositionZ, GroupPositionX, GroupPositionY, GroupPositionZ, VelocityX, VelocityY, VelocityZ, AngularVelocityX, AngularVelocityY, AngularVelocityZ, AccelerationX, AccelerationY, AccelerationZ, RotationX, RotationY, RotationZ, RotationW, SitTargetOffsetX, SitTargetOffsetY, SitTargetOffsetZ, SitTargetOrientW, SitTargetOrientX, SitTargetOrientY, SitTargetOrientZ 
	FROM prims ;

DROP TABLE prims;

alter table Tmp_prims rename to prims;


ALTER TABLE prims ADD CONSTRAINT
	PK__prims__10566F31 PRIMARY KEY 
	(
	UUID
	);

COMMIT;

--:VERSION 4

BEGIN TRANSACTION;

CREATE TABLE Tmp_primitems
	(
	itemID varchar(36) NOT NULL,
	primID varchar(36) NULL,
	assetID varchar(36) NULL,
	parentFolderID varchar(36) NULL,
	invType int NULL,
	assetType int NULL,
	name varchar(255) NULL,
	description varchar(255) NULL,
	creationDate varchar(255) NULL,
	creatorID varchar(36) NULL,
	ownerID varchar(36) NULL,
	lastOwnerID varchar(36) NULL,
	groupID varchar(36) NULL,
	nextPermissions int NULL,
	currentPermissions int NULL,
	basePermissions int NULL,
	everyonePermissions int NULL,
	groupPermissions int NULL
	);

INSERT INTO Tmp_primitems (itemID, primID, assetID, parentFolderID, invType, assetType, name, description, creationDate, creatorID, ownerID, lastOwnerID, groupID, nextPermissions, currentPermissions, basePermissions, everyonePermissions, groupPermissions)
	SELECT cast(itemID as varchar(36)), cast(primID as varchar(36)), cast(assetID as varchar(36)), cast( parentFolderID as varchar(36)), invType, assetType, name, description, creationDate, cast( creatorID as varchar(36)), cast(ownerID as varchar(36)), cast(lastOwnerID as varchar(36)), cast(groupID as varchar(36)), nextPermissions, currentPermissions, basePermissions, everyonePermissions, groupPermissions
	  from primitems;

DROP TABLE primitems;

alter table Tmp_primitems rename to primitems;

ALTER TABLE primitems ADD CONSTRAINT
	PK__primitems__0A688BB1 PRIMARY KEY 
	(
	itemID
	);


COMMIT;


--:VERSION 5

BEGIN TRANSACTION;

CREATE TABLE Tmp_primshapes
	(
	UUID varchar(36) NOT NULL,
	Shape int NULL,
	ScaleX double precision NULL,
	ScaleY double precision NULL,
	ScaleZ double precision NULL,
	PCode int NULL,
	PathBegin int NULL,
	PathEnd int NULL,
	PathScaleX int NULL,
	PathScaleY int NULL,
	PathShearX int NULL,
	PathShearY int NULL,
	PathSkew int NULL,
	PathCurve int NULL,
	PathRadiusOffset int NULL,
	PathRevolutions int NULL,
	PathTaperX int NULL,
	PathTaperY int NULL,
	PathTwist int NULL,
	PathTwistBegin int NULL,
	ProfileBegin int NULL,
	ProfileEnd int NULL,
	ProfileCurve int NULL,
	ProfileHollow int NULL,
	State int NULL,
	Texture bytea NULL,
	ExtraParams bytea NULL
	) ;

INSERT INTO Tmp_primshapes (UUID, Shape, ScaleX, ScaleY, ScaleZ, PCode, PathBegin, PathEnd, PathScaleX, PathScaleY, PathShearX, PathShearY, PathSkew, PathCurve, PathRadiusOffset, PathRevolutions, PathTaperX, PathTaperY, PathTwist, PathTwistBegin, ProfileBegin, ProfileEnd, ProfileCurve, ProfileHollow, State, Texture, ExtraParams)
	SELECT cast(UUID as varchar(36)), Shape, ScaleX, ScaleY, ScaleZ, PCode, PathBegin, PathEnd, PathScaleX, PathScaleY, PathShearX, PathShearY, PathSkew, PathCurve, PathRadiusOffset, PathRevolutions, PathTaperX, PathTaperY, PathTwist, PathTwistBegin, ProfileBegin, ProfileEnd, ProfileCurve, ProfileHollow, State, Texture, ExtraParams 
	FROM primshapes;

DROP TABLE primshapes;

alter table Tmp_primshapes rename to primshapes;

ALTER TABLE primshapes ADD CONSTRAINT
	PK__primshapes__0880433F PRIMARY KEY 
	(
	UUID
	) ;

COMMIT;


--:VERSION 6

BEGIN TRANSACTION;

ALTER TABLE prims ADD PayPrice int not null default 0;
ALTER TABLE prims ADD PayButton1 int not null default 0;
ALTER TABLE prims ADD PayButton2 int not null default 0;
ALTER TABLE prims ADD PayButton3 int not null default 0;
ALTER TABLE prims ADD PayButton4 int not null default 0;
ALTER TABLE prims ADD LoopedSound varchar(36) not null default '00000000-0000-0000-0000-000000000000';
ALTER TABLE prims ADD LoopedSoundGain double precision not null default 0.0;
ALTER TABLE prims ADD TextureAnimation bytea;
ALTER TABLE prims ADD OmegaX double precision not null default 0.0;
ALTER TABLE prims ADD OmegaY double precision not null default 0.0;
ALTER TABLE prims ADD OmegaZ double precision not null default 0.0;
ALTER TABLE prims ADD CameraEyeOffsetX double precision not null default 0.0;
ALTER TABLE prims ADD CameraEyeOffsetY double precision not null default 0.0;
ALTER TABLE prims ADD CameraEyeOffsetZ double precision not null default 0.0;
ALTER TABLE prims ADD CameraAtOffsetX double precision not null default 0.0;
ALTER TABLE prims ADD CameraAtOffsetY double precision not null default 0.0;
ALTER TABLE prims ADD CameraAtOffsetZ double precision not null default 0.0;
ALTER TABLE prims ADD ForceMouselook smallint not null default 0;
ALTER TABLE prims ADD ScriptAccessPin int not null default 0;
ALTER TABLE prims ADD AllowedDrop smallint not null default 0;
ALTER TABLE prims ADD DieAtEdge smallint not null default 0;
ALTER TABLE prims ADD SalePrice int not null default 10;
ALTER TABLE prims ADD SaleType smallint not null default 0;

ALTER TABLE primitems add flags integer not null default 0;

ALTER TABLE land ADD AuthbuyerID varchar(36) NOT NULL default '00000000-0000-0000-0000-000000000000';

CREATE index prims_regionuuid on prims(RegionUUID);
CREATE index prims_parentid on prims(ParentID);

CREATE index primitems_primid on primitems(primID);

COMMIT;


--:VERSION 7

BEGIN TRANSACTION;

ALTER TABLE prims ADD ColorR int not null default 0;
ALTER TABLE prims ADD ColorG int not null default 0;
ALTER TABLE prims ADD ColorB int not null default 0;
ALTER TABLE prims ADD ColorA int not null default 0;
ALTER TABLE prims ADD ParticleSystem bytea;
ALTER TABLE prims ADD ClickAction smallint NOT NULL default 0;

COMMIT;


--:VERSION 8

BEGIN TRANSACTION;

ALTER TABLE land ADD OtherCleanTime integer NOT NULL default 0;
ALTER TABLE land ADD Dwell integer NOT NULL default 0;

COMMIT;

--:VERSION 9

BEGIN TRANSACTION;

ALTER TABLE prims ADD Material smallint NOT NULL default 3;

COMMIT;


--:VERSION 10

BEGIN TRANSACTION;

ALTER TABLE regionsettings ADD sunvectorx double precision NOT NULL default 0;
ALTER TABLE regionsettings ADD sunvectory double precision NOT NULL default 0;
ALTER TABLE regionsettings ADD sunvectorz double precision NOT NULL default 0;

COMMIT;


--:VERSION 11

BEGIN TRANSACTION;

ALTER TABLE prims ADD CollisionSound char(36) not null default '00000000-0000-0000-0000-000000000000';
ALTER TABLE prims ADD CollisionSoundVolume double precision not null default 0.0;

COMMIT;


--:VERSION 12

BEGIN TRANSACTION;

ALTER TABLE prims ADD LinkNumber integer not null default 0;

COMMIT;


--:VERSION 13

BEGIN TRANSACTION;

CREATE TABLE Tmp_prims
	(
	UUID uuid NOT NULL,
	RegionUUID uuid NULL,
	ParentID int NULL,
	CreationDate int NULL,
	Name varchar(255) NULL,
	SceneGroupID uuid NULL,
	Text varchar(255) NULL,
	Description varchar(255) NULL,
	SitName varchar(255) NULL,
	TouchName varchar(255) NULL,
	ObjectFlags int NULL,
	CreatorID uuid NULL,
	OwnerID uuid NULL,
	GroupID uuid NULL,
	LastOwnerID uuid NULL,
	OwnerMask int NULL,
	NextOwnerMask int NULL,
	GroupMask int NULL,
	EveryoneMask int NULL,
	BaseMask int NULL,
	PositionX double precision NULL,
	PositionY double precision NULL,
	PositionZ double precision NULL,
	GroupPositionX double precision NULL,
	GroupPositionY double precision NULL,
	GroupPositionZ double precision NULL,
	VelocityX double precision NULL,
	VelocityY double precision NULL,
	VelocityZ double precision NULL,
	AngularVelocityX double precision NULL,
	AngularVelocityY double precision NULL,
	AngularVelocityZ double precision NULL,
	AccelerationX double precision NULL,
	AccelerationY double precision NULL,
	AccelerationZ double precision NULL,
	RotationX double precision NULL,
	RotationY double precision NULL,
	RotationZ double precision NULL,
	RotationW double precision NULL,
	SitTargetOffsetX double precision NULL,
	SitTargetOffsetY double precision NULL,
	SitTargetOffsetZ double precision NULL,
	SitTargetOrientW double precision NULL,
	SitTargetOrientX double precision NULL,
	SitTargetOrientY double precision NULL,
	SitTargetOrientZ double precision NULL,
	PayPrice int NOT NULL DEFAULT ((0)),
	PayButton1 int NOT NULL DEFAULT ((0)),
	PayButton2 int NOT NULL DEFAULT ((0)),
	PayButton3 int NOT NULL DEFAULT ((0)),
	PayButton4 int NOT NULL DEFAULT ((0)),
	LoopedSound uuid NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	LoopedSoundGain double precision NOT NULL DEFAULT ((0.0)),
	TextureAnimation bytea NULL,
	OmegaX double precision NOT NULL DEFAULT ((0.0)),
	OmegaY double precision NOT NULL DEFAULT ((0.0)),
	OmegaZ double precision NOT NULL DEFAULT ((0.0)),
	CameraEyeOffsetX double precision NOT NULL DEFAULT ((0.0)),
	CameraEyeOffsetY double precision NOT NULL DEFAULT ((0.0)),
	CameraEyeOffsetZ double precision NOT NULL DEFAULT ((0.0)),
	CameraAtOffsetX double precision NOT NULL DEFAULT ((0.0)),
	CameraAtOffsetY double precision NOT NULL DEFAULT ((0.0)),
	CameraAtOffsetZ double precision NOT NULL DEFAULT ((0.0)),
	ForceMouselook smallint NOT NULL DEFAULT ((0)),
	ScriptAccessPin int NOT NULL DEFAULT ((0)),
	AllowedDrop smallint NOT NULL DEFAULT ((0)),
	DieAtEdge smallint NOT NULL DEFAULT ((0)),
	SalePrice int NOT NULL DEFAULT ((10)),
	SaleType smallint NOT NULL DEFAULT ((0)),
	ColorR int NOT NULL DEFAULT ((0)),
	ColorG int NOT NULL DEFAULT ((0)),
	ColorB int NOT NULL DEFAULT ((0)),
	ColorA int NOT NULL DEFAULT ((0)),
	ParticleSystem bytea NULL,
	ClickAction smallint NOT NULL DEFAULT ((0)),
	Material smallint NOT NULL DEFAULT ((3)),
	CollisionSound uuid NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	CollisionSoundVolume double precision NOT NULL DEFAULT ((0.0)),
	LinkNumber int NOT NULL DEFAULT ((0))
	);

INSERT INTO Tmp_prims (UUID, RegionUUID, ParentID, CreationDate, Name, SceneGroupID, Text, Description, SitName, TouchName, ObjectFlags, CreatorID, OwnerID, GroupID, LastOwnerID, OwnerMask, NextOwnerMask, GroupMask, EveryoneMask, BaseMask, PositionX, PositionY, PositionZ, GroupPositionX, GroupPositionY, GroupPositionZ, VelocityX, VelocityY, VelocityZ, AngularVelocityX, AngularVelocityY, AngularVelocityZ, AccelerationX, AccelerationY, AccelerationZ, RotationX, RotationY, RotationZ, RotationW, SitTargetOffsetX, SitTargetOffsetY, SitTargetOffsetZ, SitTargetOrientW, SitTargetOrientX, SitTargetOrientY, SitTargetOrientZ, PayPrice, PayButton1, PayButton2, PayButton3, PayButton4, LoopedSound, LoopedSoundGain, TextureAnimation, OmegaX, OmegaY, OmegaZ, CameraEyeOffsetX, CameraEyeOffsetY, CameraEyeOffsetZ, CameraAtOffsetX, CameraAtOffsetY, CameraAtOffsetZ, ForceMouselook, ScriptAccessPin, AllowedDrop, DieAtEdge, SalePrice, SaleType, ColorR, ColorG, ColorB, ColorA, ParticleSystem, ClickAction, Material, CollisionSound, CollisionSoundVolume, LinkNumber)
	SELECT cast(UUID as uuid), cast(RegionUUID as uuid), ParentID, CreationDate, Name, cast(SceneGroupID as uuid), Text, Description, SitName, TouchName, ObjectFlags, cast(CreatorID as uuid), cast(OwnerID as uuid), cast(GroupID as uuid), cast(LastOwnerID as uuid), OwnerMask, NextOwnerMask, GroupMask, EveryoneMask, BaseMask, PositionX, PositionY, PositionZ, GroupPositionX, GroupPositionY, GroupPositionZ, VelocityX, VelocityY, VelocityZ, AngularVelocityX, AngularVelocityY, AngularVelocityZ, AccelerationX, AccelerationY, AccelerationZ, RotationX, RotationY, RotationZ, RotationW, SitTargetOffsetX, SitTargetOffsetY, SitTargetOffsetZ, SitTargetOrientW, SitTargetOrientX, SitTargetOrientY, SitTargetOrientZ, PayPrice, PayButton1, PayButton2, PayButton3, PayButton4, cast(LoopedSound as uuid), LoopedSoundGain, TextureAnimation, OmegaX, OmegaY, OmegaZ, CameraEyeOffsetX, CameraEyeOffsetY, CameraEyeOffsetZ, CameraAtOffsetX, CameraAtOffsetY, CameraAtOffsetZ, ForceMouselook, ScriptAccessPin, AllowedDrop, DieAtEdge, SalePrice, SaleType, ColorR, ColorG, ColorB, ColorA, ParticleSystem, ClickAction, Material, cast(CollisionSound as uuid), CollisionSoundVolume, LinkNumber 
	 FROM prims ;

DROP TABLE prims;

alter table Tmp_prims rename to prims;

ALTER TABLE prims ADD CONSTRAINT
	PK__prims__10566F31 PRIMARY KEY 
	(
	UUID
	);


CREATE INDEX prims_regionuuid ON prims
	(
	RegionUUID
	);

CREATE INDEX prims_parentid ON prims
	(
	ParentID
	);

COMMIT;


--:VERSION 14

BEGIN TRANSACTION;

CREATE TABLE Tmp_primshapes
	(
	UUID uuid NOT NULL,
	Shape int NULL,
	ScaleX double precision NULL,
	ScaleY double precision NULL,
	ScaleZ double precision NULL,
	PCode int NULL,
	PathBegin int NULL,
	PathEnd int NULL,
	PathScaleX int NULL,
	PathScaleY int NULL,
	PathShearX int NULL,
	PathShearY int NULL,
	PathSkew int NULL,
	PathCurve int NULL,
	PathRadiusOffset int NULL,
	PathRevolutions int NULL,
	PathTaperX int NULL,
	PathTaperY int NULL,
	PathTwist int NULL,
	PathTwistBegin int NULL,
	ProfileBegin int NULL,
	ProfileEnd int NULL,
	ProfileCurve int NULL,
	ProfileHollow int NULL,
	State int NULL,
	Texture bytea NULL,
	ExtraParams bytea NULL
	);

INSERT INTO Tmp_primshapes (UUID, Shape, ScaleX, ScaleY, ScaleZ, PCode, PathBegin, PathEnd, PathScaleX, PathScaleY, PathShearX, PathShearY, PathSkew, PathCurve, PathRadiusOffset, PathRevolutions, PathTaperX, PathTaperY, PathTwist, PathTwistBegin, ProfileBegin, ProfileEnd, ProfileCurve, ProfileHollow, State, Texture, ExtraParams)
	SELECT cast(UUID as uuid), Shape, ScaleX, ScaleY, ScaleZ, PCode, PathBegin, PathEnd, PathScaleX, PathScaleY, PathShearX, PathShearY, PathSkew, PathCurve, PathRadiusOffset, PathRevolutions, PathTaperX, PathTaperY, PathTwist, PathTwistBegin, ProfileBegin, ProfileEnd, ProfileCurve, ProfileHollow, State, Texture, ExtraParams 
	FROM primshapes;

DROP TABLE primshapes;

alter table Tmp_primshapes rename to primshapes;

ALTER TABLE primshapes ADD CONSTRAINT
	PK__primshapes__0880433F PRIMARY KEY 
	(
	UUID
	);

COMMIT;


--:VERSION 15

BEGIN TRANSACTION;

CREATE TABLE Tmp_primitems
	(
	itemID uuid NOT NULL,
	primID uuid NULL,
	assetID uuid NULL,
	parentFolderID uuid NULL,
	invType int NULL,
	assetType int NULL,
	name varchar(255) NULL,
	description varchar(255) NULL,
	creationDate varchar(255) NULL,
	creatorID uuid NULL,
	ownerID uuid NULL,
	lastOwnerID uuid NULL,
	groupID uuid NULL,
	nextPermissions int NULL,
	currentPermissions int NULL,
	basePermissions int NULL,
	everyonePermissions int NULL,
	groupPermissions int NULL,
	flags int NOT NULL DEFAULT ((0))
	);

INSERT INTO Tmp_primitems (itemID, primID, assetID, parentFolderID, invType, assetType, name, description, creationDate, creatorID, ownerID, lastOwnerID, groupID, nextPermissions, currentPermissions, basePermissions, everyonePermissions, groupPermissions, flags)
	SELECT cast(itemID as uuid), cast(primID as uuid), cast(assetID as uuid), cast(parentFolderID as uuid), invType, assetType, name, description, creationDate, cast(creatorID as uuid), cast(ownerID as uuid), cast(lastOwnerID as uuid), cast(groupID as uuid), nextPermissions, currentPermissions, basePermissions, everyonePermissions, groupPermissions, flags 
	FROM primitems ;

DROP TABLE primitems;

alter table Tmp_primitems rename to primitems;

ALTER TABLE primitems ADD CONSTRAINT
	PK__primitems__0A688BB1 PRIMARY KEY 
	(
	itemID
	);

CREATE INDEX primitems_primid ON primitems
	(
	primID
	) ;

COMMIT;


--:VERSION 16


BEGIN TRANSACTION;

CREATE TABLE Tmp_terrain
	(
	RegionUUID uuid NULL,
	Revision int NULL,
	Heightfield bytea NULL
	);

INSERT INTO Tmp_terrain (RegionUUID, Revision, Heightfield)
	SELECT cast(RegionUUID as uuid), Revision, Heightfield 
	FROM terrain ;

DROP TABLE terrain;

alter table Tmp_terrain rename to terrain;

COMMIT;


--:VERSION 17

BEGIN TRANSACTION;

CREATE TABLE Tmp_land
	(
	UUID uuid NOT NULL,
	RegionUUID uuid NULL,
	LocalLandID int NULL,
	Bitmap bytea NULL,
	Name varchar(255) NULL,
	Description varchar(255) NULL,
	OwnerUUID uuid NULL,
	IsGroupOwned int NULL,
	Area int NULL,
	AuctionID int NULL,
	Category int NULL,
	ClaimDate int NULL,
	ClaimPrice int NULL,
	GroupUUID uuid NULL,
	SalePrice int NULL,
	LandStatus int NULL,
	LandFlags int NULL,
	LandingType int NULL,
	MediaAutoScale int NULL,
	MediaTextureUUID uuid NULL,
	MediaURL varchar(255) NULL,
	MusicURL varchar(255) NULL,
	PassHours double precision NULL,
	PassPrice int NULL,
	SnapshotUUID uuid NULL,
	UserLocationX double precision NULL,
	UserLocationY double precision NULL,
	UserLocationZ double precision NULL,
	UserLookAtX double precision NULL,
	UserLookAtY double precision NULL,
	UserLookAtZ double precision NULL,
	AuthbuyerID uuid NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	OtherCleanTime int NOT NULL DEFAULT ((0)),
	Dwell int NOT NULL DEFAULT ((0))
	);
	
INSERT INTO Tmp_land (UUID, RegionUUID, LocalLandID, Bitmap, Name, Description, OwnerUUID, IsGroupOwned, Area, AuctionID, Category, ClaimDate, ClaimPrice, GroupUUID, SalePrice, LandStatus, LandFlags, LandingType, MediaAutoScale, MediaTextureUUID, MediaURL, MusicURL, PassHours, PassPrice, SnapshotUUID, UserLocationX, UserLocationY, UserLocationZ, UserLookAtX, UserLookAtY, UserLookAtZ, AuthbuyerID, OtherCleanTime, Dwell)
	SELECT cast(UUID as uuid), cast(RegionUUID as uuid), LocalLandID, Bitmap, Name, Description, cast(OwnerUUID as uuid), IsGroupOwned, Area, AuctionID, Category, ClaimDate, ClaimPrice, cast(GroupUUID as uuid), SalePrice, LandStatus, LandFlags, LandingType, MediaAutoScale, cast(MediaTextureUUID as uuid), MediaURL, MusicURL, PassHours, PassPrice, cast(SnapshotUUID as uuid), UserLocationX, UserLocationY, UserLocationZ, UserLookAtX, UserLookAtY, UserLookAtZ, cast(AuthbuyerID as uuid), OtherCleanTime, Dwell 
	FROM land ;

DROP TABLE land;

alter table Tmp_land rename to land;

ALTER TABLE land ADD CONSTRAINT
	PK__land__65A475E71BFD2C07 PRIMARY KEY 
	(
	UUID
	);

COMMIT;



--:VERSION 18

BEGIN TRANSACTION;

CREATE TABLE Tmp_landaccesslist
	(
	LandUUID uuid NULL,
	AccessUUID uuid NULL,
	Flags int NULL
	);

INSERT INTO Tmp_landaccesslist (LandUUID, AccessUUID, Flags)
	SELECT cast(LandUUID as uuid), cast(AccessUUID as uuid), Flags 
	FROM landaccesslist ;

DROP TABLE landaccesslist;

alter table Tmp_landaccesslist rename to landaccesslist;

COMMIT;



--:VERSION 19

BEGIN TRANSACTION;

CREATE TABLE Tmp_regionban
	(
	regionUUID uuid NOT NULL,
	bannedUUID uuid NOT NULL,
	bannedIp varchar(16) NOT NULL,
	bannedIpHostMask varchar(16) NOT NULL
	);

INSERT INTO Tmp_regionban (regionUUID, bannedUUID, bannedIp, bannedIpHostMask)
	SELECT cast(regionUUID as uuid), cast(bannedUUID as uuid), bannedIp, bannedIpHostMask 
	FROM regionban ;

DROP TABLE regionban;

alter table Tmp_regionban rename to regionban;

COMMIT;


--:VERSION 20

BEGIN TRANSACTION;

CREATE TABLE Tmp_regionsettings
	(
	regionUUID uuid NOT NULL,
	block_terraform boolean NOT NULL,
	block_fly boolean NOT NULL,
	allow_damage boolean NOT NULL,
	restrict_pushing boolean NOT NULL,
	allow_land_resell boolean NOT NULL,
	allow_land_join_divide boolean NOT NULL,
	block_show_in_search boolean NOT NULL,
	agent_limit int NOT NULL,
	object_bonus double precision NOT NULL,
	maturity int NOT NULL,
	disable_scripts boolean NOT NULL,
	disable_collisions boolean NOT NULL,
	disable_physics boolean NOT NULL,
	terrain_texture_1 uuid NOT NULL,
	terrain_texture_2 uuid NOT NULL,
	terrain_texture_3 uuid NOT NULL,
	terrain_texture_4 uuid NOT NULL,
	elevation_1_nw double precision NOT NULL,
	elevation_2_nw double precision NOT NULL,
	elevation_1_ne double precision NOT NULL,
	elevation_2_ne double precision NOT NULL,
	elevation_1_se double precision NOT NULL,
	elevation_2_se double precision NOT NULL,
	elevation_1_sw double precision NOT NULL,
	elevation_2_sw double precision NOT NULL,
	water_height double precision NOT NULL,
	terrain_raise_limit double precision NOT NULL,
	terrain_lower_limit double precision NOT NULL,
	use_estate_sun boolean NOT NULL,
	fixed_sun boolean NOT NULL,
	sun_position double precision NOT NULL,
	covenant uuid NULL DEFAULT (NULL),
	Sandbox boolean NOT NULL,
	sunvectorx double precision NOT NULL DEFAULT ((0)),
	sunvectory double precision NOT NULL DEFAULT ((0)),
	sunvectorz double precision NOT NULL DEFAULT ((0))
	);

INSERT INTO Tmp_regionsettings (regionUUID, block_terraform, block_fly, allow_damage, restrict_pushing, allow_land_resell, allow_land_join_divide, block_show_in_search, agent_limit, object_bonus, maturity, disable_scripts, disable_collisions, disable_physics, terrain_texture_1, terrain_texture_2, terrain_texture_3, terrain_texture_4, elevation_1_nw, elevation_2_nw, elevation_1_ne, elevation_2_ne, elevation_1_se, elevation_2_se, elevation_1_sw, elevation_2_sw, water_height, terrain_raise_limit, terrain_lower_limit, use_estate_sun, fixed_sun, sun_position, covenant, Sandbox, sunvectorx, sunvectory, sunvectorz)
	SELECT CONVERT(uuid, regionUUID), block_terraform, block_fly, allow_damage, restrict_pushing, allow_land_resell, allow_land_join_divide, block_show_in_search, agent_limit, object_bonus, maturity, disable_scripts, disable_collisions, disable_physics, CONVERT(uuid, terrain_texture_1), CONVERT(uuid, terrain_texture_2), CONVERT(uuid, terrain_texture_3), CONVERT(uuid, terrain_texture_4), elevation_1_nw, elevation_2_nw, elevation_1_ne, elevation_2_ne, elevation_1_se, elevation_2_se, elevation_1_sw, elevation_2_sw, water_height, terrain_raise_limit, terrain_lower_limit, use_estate_sun, fixed_sun, sun_position, CONVERT(uuid, covenant), Sandbox, sunvectorx, sunvectory, sunvectorz FROM regionsettings ;

DROP TABLE regionsettings

EXECUTE sp_rename N'Tmp_regionsettings', N'regionsettings', 'OBJECT' 

ALTER TABLE regionsettings ADD CONSTRAINT
	PK__regionse__5B35159D21B6055D PRIMARY KEY 
	(
	regionUUID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON PRIMARY

COMMIT


--:VERSION 21

BEGIN TRANSACTION

ALTER TABLE prims ADD PassTouches boolean not null default 0

COMMIT


--:VERSION 22

BEGIN TRANSACTION

ALTER TABLE regionsettings ADD loaded_creation_date varchar(20) 
ALTER TABLE regionsettings ADD loaded_creation_time varchar(20) 
ALTER TABLE regionsettings ADD loaded_creation_id varchar(64) 

COMMIT

--:VERSION 23

BEGIN TRANSACTION

ALTER TABLE regionsettings DROP COLUMN loaded_creation_date
ALTER TABLE regionsettings DROP COLUMN loaded_creation_time
ALTER TABLE regionsettings ADD loaded_creation_datetime int NOT NULL default 0

COMMIT

--:VERSION 24

BEGIN TRANSACTION

ALTER TABLE prims ADD  MediaURL varchar(255)
ALTER TABLE primshapes ADD Media TEXT NULL

COMMIT

--:VERSION 25

BEGIN TRANSACTION
CREATE TABLE "regionwindlight" (
  "region_id" varchar(36) NOT NULL DEFAULT '000000-0000-0000-0000-000000000000',
  "water_color_r" double precision NOT NULL DEFAULT '4.000000',
  "water_color_g" double precision NOT NULL DEFAULT '38.000000',
  "water_color_b" double precision NOT NULL DEFAULT '64.000000',
  "water_fog_density_exponent" double precision NOT NULL DEFAULT '4.0',
  "underwater_fog_modifier" double precision NOT NULL DEFAULT '0.25',
  "reflection_wavelet_scale_1" double precision NOT NULL DEFAULT '2.0',
  "reflection_wavelet_scale_2" double precision NOT NULL DEFAULT '2.0',
  "reflection_wavelet_scale_3" double precision NOT NULL DEFAULT '2.0',
  "fresnel_scale" double precision NOT NULL DEFAULT '0.40',
  "fresnel_offset" double precision NOT NULL DEFAULT '0.50',
  "refract_scale_above" double precision NOT NULL DEFAULT '0.03',
  "refract_scale_below" double precision NOT NULL DEFAULT '0.20',
  "blur_multiplier" double precision NOT NULL DEFAULT '0.040',
  "big_wave_direction_x" double precision NOT NULL DEFAULT '1.05',
  "big_wave_direction_y" double precision NOT NULL DEFAULT '-0.42',
  "little_wave_direction_x" double precision NOT NULL DEFAULT '1.11',
  "little_wave_direction_y" double precision NOT NULL DEFAULT '-1.16',
  "normal_map_texture" varchar(36) NOT NULL DEFAULT '822ded49-9a6c-f61c-cb89-6df54f42cdf4',
  "horizon_r" double precision NOT NULL DEFAULT '0.25',
  "horizon_g" double precision NOT NULL DEFAULT '0.25',
  "horizon_b" double precision NOT NULL DEFAULT '0.32',
  "horizon_i" double precision NOT NULL DEFAULT '0.32',
  "haze_horizon" double precision NOT NULL DEFAULT '0.19',
  "blue_density_r" double precision NOT NULL DEFAULT '0.12',
  "blue_density_g" double precision NOT NULL DEFAULT '0.22',
  "blue_density_b" double precision NOT NULL DEFAULT '0.38',
  "blue_density_i" double precision NOT NULL DEFAULT '0.38',
  "haze_density" double precision NOT NULL DEFAULT '0.70',
  "density_multiplier" double precision NOT NULL DEFAULT '0.18',
  "distance_multiplier" double precision NOT NULL DEFAULT '0.8',
  "max_altitude" int NOT NULL DEFAULT '1605',
  "sun_moon_color_r" double precision NOT NULL DEFAULT '0.24',
  "sun_moon_color_g" double precision NOT NULL DEFAULT '0.26',
  "sun_moon_color_b" double precision NOT NULL DEFAULT '0.30',
  "sun_moon_color_i" double precision NOT NULL DEFAULT '0.30',
  "sun_moon_position" double precision NOT NULL DEFAULT '0.317',
  "ambient_r" double precision NOT NULL DEFAULT '0.35',
  "ambient_g" double precision NOT NULL DEFAULT '0.35',
  "ambient_b" double precision NOT NULL DEFAULT '0.35',
  "ambient_i" double precision NOT NULL DEFAULT '0.35',
  "east_angle" double precision NOT NULL DEFAULT '0.00',
  "sun_glow_focus" double precision NOT NULL DEFAULT '0.10',
  "sun_glow_size" double precision NOT NULL DEFAULT '1.75',
  "scene_gamma" double precision NOT NULL DEFAULT '1.00',
  "star_brightness" double precision NOT NULL DEFAULT '0.00',
  "cloud_color_r" double precision NOT NULL DEFAULT '0.41',
  "cloud_color_g" double precision NOT NULL DEFAULT '0.41',
  "cloud_color_b" double precision NOT NULL DEFAULT '0.41',
  "cloud_color_i" double precision NOT NULL DEFAULT '0.41',
  "cloud_x" double precision NOT NULL DEFAULT '1.00',
  "cloud_y" double precision NOT NULL DEFAULT '0.53',
  "cloud_density" double precision NOT NULL DEFAULT '1.00',
  "cloud_coverage" double precision NOT NULL DEFAULT '0.27',
  "cloud_scale" double precision NOT NULL DEFAULT '0.42',
  "cloud_detail_x" double precision NOT NULL DEFAULT '1.00',
  "cloud_detail_y" double precision NOT NULL DEFAULT '0.53',
  "cloud_detail_density" double precision NOT NULL DEFAULT '0.12',
  "cloud_scroll_x" double precision NOT NULL DEFAULT '0.20',
  "cloud_scroll_x_lock" smallint NOT NULL DEFAULT '0',
  "cloud_scroll_y" double precision NOT NULL DEFAULT '0.01',
  "cloud_scroll_y_lock" smallint NOT NULL DEFAULT '0',
  "draw_classic_clouds" smallint NOT NULL DEFAULT '1',
  PRIMARY KEY ("region_id")
)

COMMIT

--:VERSION 26

BEGIN TRANSACTION

ALTER TABLE regionsettings ADD map_tile_ID CHAR(36) NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000'

COMMIT

--:VERSION 27         #---------------------

BEGIN TRANSACTION
ALTER TABLE land ADD MediaType VARCHAR(32) NOT NULL DEFAULT 'none/none' 
ALTER TABLE land ADD MediaDescription VARCHAR(255) NOT NULL DEFAULT ''
ALTER TABLE land ADD MediaSize VARCHAR(16) NOT NULL DEFAULT '0,0'
ALTER TABLE land ADD MediaLoop boolean NOT NULL DEFAULT 0
ALTER TABLE land ADD ObscureMusic boolean NOT NULL DEFAULT 0
ALTER TABLE land ADD ObscureMedia boolean NOT NULL DEFAULT 0
COMMIT

--:VERSION 28         #---------------------

BEGIN TRANSACTION

ALTER TABLE prims 
ADD CONSTRAINT DF_prims_CreatorID 
DEFAULT '00000000-0000-0000-0000-000000000000' 
FOR CreatorID

ALTER TABLE prims  ALTER COLUMN CreatorID uuid NOT NULL

ALTER TABLE primitems
ADD CONSTRAINT DF_primitems_CreatorID 
DEFAULT '00000000-0000-0000-0000-000000000000' 
FOR CreatorID

ALTER TABLE primitems ALTER COLUMN CreatorID uuid NOT NULL

COMMIT

--:VERSION 29         #----------------- Region Covenant changed time

BEGIN TRANSACTION

ALTER TABLE regionsettings ADD covenant_datetime int NOT NULL default 0

COMMIT

--:VERSION 30         #------------------Migrate creatorID storage to varchars instead of UUIDs for HG support

BEGIN TRANSACTION

EXECUTE sp_rename N'prims.creatorid', N'creatoridold', 'COLUMN'
EXECUTE sp_rename N'primitems.creatorid', N'creatoridold', 'COLUMN'

COMMIT

--:VERSION 31        #---------------------

BEGIN TRANSACTION

ALTER TABLE prims ADD CreatorID varchar(255)
ALTER TABLE primitems ADD CreatorID varchar(255)

COMMIT

--:VERSION 32        #---------------------

BEGIN TRANSACTION

UPDATE prims SET prims.CreatorID = CONVERT(varchar(255), creatoridold)
UPDATE primitems SET primitems.CreatorID = CONVERT(varchar(255), creatoridold)

COMMIT

--:VERSION 33       #---------------------

BEGIN TRANSACTION

ALTER TABLE prims 
ADD CONSTRAINT DF_prims_CreatorIDNew 
DEFAULT '00000000-0000-0000-0000-000000000000' 
FOR CreatorID

ALTER TABLE prims ALTER COLUMN CreatorID varchar(255) NOT NULL

ALTER TABLE primitems
ADD CONSTRAINT DF_primitems_CreatorIDNew
DEFAULT '00000000-0000-0000-0000-000000000000' 
FOR CreatorID

ALTER TABLE primitems ALTER COLUMN CreatorID varchar(255) NOT NULL

COMMIT

--:VERSION 34		  #--------------- Telehub support

BEGIN TRANSACTION

CREATE TABLE Spawn_Points(
	RegionUUID uuid NOT NULL,
	Yaw double precision NOT NULL,
	Pitch double precision NOT NULL,
	Distance double precision NOT NULL,
	PRIMARY KEY 
	(
		RegionUUID ASC
	)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

ALTER TABLE regionsettings ADD TelehubObject uuid NOT NULL  DEFAULT '00000000-0000-0000-0000-000000000000';

COMMIT

--:VERSION 35       #---------------- Parcels for sale

BEGIN TRANSACTION

ALTER TABLE regionsettings ADD parcel_tile_ID uuid NOT NULL  DEFAULT '00000000-0000-0000-0000-000000000000';

COMMIT

--:VERSION 36       #---------------- Timed bans/access

BEGIN TRANSACTION

ALTER TABLE landaccesslist ADD Expires integer NOT NULL  DEFAULT 0;

COMMIT

--:VERSION 37       #---------------- Environment Settings

BEGIN TRANSACTION

CREATE TABLE regionenvironment(
	region_id uuid NOT NULL,
	llsd_settings varchar(max)  NOT NULL,
 PRIMARY KEY
(
	region_id ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON PRIMARY
) ON PRIMARY

COMMIT

--:VERSION 38       #---------------- Dynamic attributes

BEGIN TRANSACTION

ALTER TABLE prims ADD DynAttrs TEXT;

COMMIT

--:VERSION 39       #---------------- Extra physics params

BEGIN TRANSACTION

ALTER TABLE prims ADD `PhysicsShapeType` smallint(4) NOT NULL default '0';
ALTER TABLE prims ADD `Density` double NOT NULL default '1000';
ALTER TABLE prims ADD `GravityModifier` double NOT NULL default '1';
ALTER TABLE prims ADD `Friction` double NOT NULL default '0.6';
ALTER TABLE prims ADD `Restitution` double NOT NULL default '0.5';

COMMIT
