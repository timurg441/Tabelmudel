
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/13/2026 08:58:13
-- Generated from EDMX file: C:\Users\opilane\source\repos\Tabelmudel\Tabelmudel\Kellasepp.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Kellasepp];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_KlientKell]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KellSet] DROP CONSTRAINT [FK_KlientKell];
GO
IF OBJECT_ID(N'[dbo].[FK_TooToo_kategooria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Too_kategooriaSet] DROP CONSTRAINT [FK_TooToo_kategooria];
GO
IF OBJECT_ID(N'[dbo].[FK_KellRemont]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RemontSet] DROP CONSTRAINT [FK_KellRemont];
GO
IF OBJECT_ID(N'[dbo].[FK_RemontArve]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArveSet] DROP CONSTRAINT [FK_RemontArve];
GO
IF OBJECT_ID(N'[dbo].[FK_RemontRemont_Tootaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Remont_TootajaSet] DROP CONSTRAINT [FK_RemontRemont_Tootaja];
GO
IF OBJECT_ID(N'[dbo].[FK_TootajaRemont_Tootaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Remont_TootajaSet] DROP CONSTRAINT [FK_TootajaRemont_Tootaja];
GO
IF OBJECT_ID(N'[dbo].[FK_RemontRemont_Too]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Remont_TooSet] DROP CONSTRAINT [FK_RemontRemont_Too];
GO
IF OBJECT_ID(N'[dbo].[FK_TooRemont_Too]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Remont_TooSet] DROP CONSTRAINT [FK_TooRemont_Too];
GO
IF OBJECT_ID(N'[dbo].[FK_RemontRemont_Varuosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Remont_VaruosaSet] DROP CONSTRAINT [FK_RemontRemont_Varuosa];
GO
IF OBJECT_ID(N'[dbo].[FK_VaruosaRemont_Varuosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Remont_VaruosaSet] DROP CONSTRAINT [FK_VaruosaRemont_Varuosa];
GO
IF OBJECT_ID(N'[dbo].[FK_TootajaTootaja_Ametikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tootaja_AmetikohtSet] DROP CONSTRAINT [FK_TootajaTootaja_Ametikoht];
GO
IF OBJECT_ID(N'[dbo].[FK_AmetikohtTootaja_Ametikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tootaja_AmetikohtSet] DROP CONSTRAINT [FK_AmetikohtTootaja_Ametikoht];
GO
IF OBJECT_ID(N'[dbo].[FK_TarnijaTarnija_Varuosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tarnija_VaruosaSet] DROP CONSTRAINT [FK_TarnijaTarnija_Varuosa];
GO
IF OBJECT_ID(N'[dbo].[FK_VaruosaTarnija_Varuosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tarnija_VaruosaSet] DROP CONSTRAINT [FK_VaruosaTarnija_Varuosa];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[KlientSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KlientSet];
GO
IF OBJECT_ID(N'[dbo].[Too_kategooriaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Too_kategooriaSet];
GO
IF OBJECT_ID(N'[dbo].[TootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TootajaSet];
GO
IF OBJECT_ID(N'[dbo].[AmetikohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AmetikohtSet];
GO
IF OBJECT_ID(N'[dbo].[VaruosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VaruosaSet];
GO
IF OBJECT_ID(N'[dbo].[TarnijaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TarnijaSet];
GO
IF OBJECT_ID(N'[dbo].[KellSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KellSet];
GO
IF OBJECT_ID(N'[dbo].[TooSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TooSet];
GO
IF OBJECT_ID(N'[dbo].[RemontSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RemontSet];
GO
IF OBJECT_ID(N'[dbo].[ArveSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArveSet];
GO
IF OBJECT_ID(N'[dbo].[Remont_TootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Remont_TootajaSet];
GO
IF OBJECT_ID(N'[dbo].[Remont_TooSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Remont_TooSet];
GO
IF OBJECT_ID(N'[dbo].[Remont_VaruosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Remont_VaruosaSet];
GO
IF OBJECT_ID(N'[dbo].[Tootaja_AmetikohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tootaja_AmetikohtSet];
GO
IF OBJECT_ID(N'[dbo].[Tarnija_VaruosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tarnija_VaruosaSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'KlientSet'
CREATE TABLE [dbo].[KlientSet] (
    [klient_id] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Too_kategooriaSet'
CREATE TABLE [dbo].[Too_kategooriaSet] (
    [kategooria_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [Too_too_id] int  NOT NULL
);
GO

-- Creating table 'TootajaSet'
CREATE TABLE [dbo].[TootajaSet] (
    [tootaja_id] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AmetikohtSet'
CREATE TABLE [dbo].[AmetikohtSet] (
    [ametikoht_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VaruosaSet'
CREATE TABLE [dbo].[VaruosaSet] (
    [varuosa_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [tootja] nvarchar(max)  NOT NULL,
    [hind] decimal(18,0)  NOT NULL,
    [laoseis] int  NOT NULL
);
GO

-- Creating table 'TarnijaSet'
CREATE TABLE [dbo].[TarnijaSet] (
    [tarnija_id] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'KellSet'
CREATE TABLE [dbo].[KellSet] (
    [kell_id] int IDENTITY(1,1) NOT NULL,
    [tootja] nvarchar(max)  NOT NULL,
    [mudel] nvarchar(max)  NOT NULL,
    [seerianumber] nvarchar(max)  NOT NULL,
    [kellatuup] nvarchar(max)  NOT NULL,
    [valmistamisaasta] int  NOT NULL,
    [Klient_klient_id] int  NOT NULL
);
GO

-- Creating table 'TooSet'
CREATE TABLE [dbo].[TooSet] (
    [too_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [hind] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'RemontSet'
CREATE TABLE [dbo].[RemontSet] (
    [remont_id] int IDENTITY(1,1) NOT NULL,
    [kuupaev] datetime  NOT NULL,
    [Kell_kell_id] int  NOT NULL
);
GO

-- Creating table 'ArveSet'
CREATE TABLE [dbo].[ArveSet] (
    [arve_id] int IDENTITY(1,1) NOT NULL,
    [too_summa] decimal(18,0)  NOT NULL,
    [varuosade_summa] decimal(18,0)  NOT NULL,
    [kokku_summa] decimal(18,0)  NOT NULL,
    [makse_staatus] nvarchar(max)  NOT NULL,
    [Remont_remont_id] int  NOT NULL
);
GO

-- Creating table 'Remont_TootajaSet'
CREATE TABLE [dbo].[Remont_TootajaSet] (
    [Remont_remont_id] int  NOT NULL,
    [Tootaja_tootaja_id] int  NOT NULL
);
GO

-- Creating table 'Remont_TooSet'
CREATE TABLE [dbo].[Remont_TooSet] (
    [Remont_remont_id] int  NOT NULL,
    [Too_too_id] int  NOT NULL
);
GO

-- Creating table 'Remont_VaruosaSet'
CREATE TABLE [dbo].[Remont_VaruosaSet] (
    [Remont_remont_id] int  NOT NULL,
    [Varuosa_varuosa_id] int  NOT NULL
);
GO

-- Creating table 'Tootaja_AmetikohtSet'
CREATE TABLE [dbo].[Tootaja_AmetikohtSet] (
    [alguskuupaev] datetime  NOT NULL,
    [loppkuupaev] datetime  NOT NULL,
    [Tootaja_tootaja_id] int  NOT NULL,
    [Ametikoht_ametikoht_id] int  NOT NULL
);
GO

-- Creating table 'Tarnija_VaruosaSet'
CREATE TABLE [dbo].[Tarnija_VaruosaSet] (
    [pakutav_hind] decimal(18,0)  NOT NULL,
    [Tarnija_tarnija_id] int  NOT NULL,
    [Varuosa_varuosa_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [klient_id] in table 'KlientSet'
ALTER TABLE [dbo].[KlientSet]
ADD CONSTRAINT [PK_KlientSet]
    PRIMARY KEY CLUSTERED ([klient_id] ASC);
GO

-- Creating primary key on [kategooria_id] in table 'Too_kategooriaSet'
ALTER TABLE [dbo].[Too_kategooriaSet]
ADD CONSTRAINT [PK_Too_kategooriaSet]
    PRIMARY KEY CLUSTERED ([kategooria_id] ASC);
GO

-- Creating primary key on [tootaja_id] in table 'TootajaSet'
ALTER TABLE [dbo].[TootajaSet]
ADD CONSTRAINT [PK_TootajaSet]
    PRIMARY KEY CLUSTERED ([tootaja_id] ASC);
GO

-- Creating primary key on [ametikoht_id] in table 'AmetikohtSet'
ALTER TABLE [dbo].[AmetikohtSet]
ADD CONSTRAINT [PK_AmetikohtSet]
    PRIMARY KEY CLUSTERED ([ametikoht_id] ASC);
GO

-- Creating primary key on [varuosa_id] in table 'VaruosaSet'
ALTER TABLE [dbo].[VaruosaSet]
ADD CONSTRAINT [PK_VaruosaSet]
    PRIMARY KEY CLUSTERED ([varuosa_id] ASC);
GO

-- Creating primary key on [tarnija_id] in table 'TarnijaSet'
ALTER TABLE [dbo].[TarnijaSet]
ADD CONSTRAINT [PK_TarnijaSet]
    PRIMARY KEY CLUSTERED ([tarnija_id] ASC);
GO

-- Creating primary key on [kell_id] in table 'KellSet'
ALTER TABLE [dbo].[KellSet]
ADD CONSTRAINT [PK_KellSet]
    PRIMARY KEY CLUSTERED ([kell_id] ASC);
GO

-- Creating primary key on [too_id] in table 'TooSet'
ALTER TABLE [dbo].[TooSet]
ADD CONSTRAINT [PK_TooSet]
    PRIMARY KEY CLUSTERED ([too_id] ASC);
GO

-- Creating primary key on [remont_id] in table 'RemontSet'
ALTER TABLE [dbo].[RemontSet]
ADD CONSTRAINT [PK_RemontSet]
    PRIMARY KEY CLUSTERED ([remont_id] ASC);
GO

-- Creating primary key on [arve_id] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [PK_ArveSet]
    PRIMARY KEY CLUSTERED ([arve_id] ASC);
GO

-- Creating primary key on [Remont_remont_id], [Tootaja_tootaja_id] in table 'Remont_TootajaSet'
ALTER TABLE [dbo].[Remont_TootajaSet]
ADD CONSTRAINT [PK_Remont_TootajaSet]
    PRIMARY KEY CLUSTERED ([Remont_remont_id], [Tootaja_tootaja_id] ASC);
GO

-- Creating primary key on [Remont_remont_id], [Too_too_id] in table 'Remont_TooSet'
ALTER TABLE [dbo].[Remont_TooSet]
ADD CONSTRAINT [PK_Remont_TooSet]
    PRIMARY KEY CLUSTERED ([Remont_remont_id], [Too_too_id] ASC);
GO

-- Creating primary key on [Remont_remont_id], [Varuosa_varuosa_id] in table 'Remont_VaruosaSet'
ALTER TABLE [dbo].[Remont_VaruosaSet]
ADD CONSTRAINT [PK_Remont_VaruosaSet]
    PRIMARY KEY CLUSTERED ([Remont_remont_id], [Varuosa_varuosa_id] ASC);
GO

-- Creating primary key on [Tootaja_tootaja_id], [Ametikoht_ametikoht_id] in table 'Tootaja_AmetikohtSet'
ALTER TABLE [dbo].[Tootaja_AmetikohtSet]
ADD CONSTRAINT [PK_Tootaja_AmetikohtSet]
    PRIMARY KEY CLUSTERED ([Tootaja_tootaja_id], [Ametikoht_ametikoht_id] ASC);
GO

-- Creating primary key on [Tarnija_tarnija_id], [Varuosa_varuosa_id] in table 'Tarnija_VaruosaSet'
ALTER TABLE [dbo].[Tarnija_VaruosaSet]
ADD CONSTRAINT [PK_Tarnija_VaruosaSet]
    PRIMARY KEY CLUSTERED ([Tarnija_tarnija_id], [Varuosa_varuosa_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Klient_klient_id] in table 'KellSet'
ALTER TABLE [dbo].[KellSet]
ADD CONSTRAINT [FK_KlientKell]
    FOREIGN KEY ([Klient_klient_id])
    REFERENCES [dbo].[KlientSet]
        ([klient_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KlientKell'
CREATE INDEX [IX_FK_KlientKell]
ON [dbo].[KellSet]
    ([Klient_klient_id]);
GO

-- Creating foreign key on [Too_too_id] in table 'Too_kategooriaSet'
ALTER TABLE [dbo].[Too_kategooriaSet]
ADD CONSTRAINT [FK_TooToo_kategooria]
    FOREIGN KEY ([Too_too_id])
    REFERENCES [dbo].[TooSet]
        ([too_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TooToo_kategooria'
CREATE INDEX [IX_FK_TooToo_kategooria]
ON [dbo].[Too_kategooriaSet]
    ([Too_too_id]);
GO

-- Creating foreign key on [Kell_kell_id] in table 'RemontSet'
ALTER TABLE [dbo].[RemontSet]
ADD CONSTRAINT [FK_KellRemont]
    FOREIGN KEY ([Kell_kell_id])
    REFERENCES [dbo].[KellSet]
        ([kell_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KellRemont'
CREATE INDEX [IX_FK_KellRemont]
ON [dbo].[RemontSet]
    ([Kell_kell_id]);
GO

-- Creating foreign key on [Remont_remont_id] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [FK_RemontArve]
    FOREIGN KEY ([Remont_remont_id])
    REFERENCES [dbo].[RemontSet]
        ([remont_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RemontArve'
CREATE INDEX [IX_FK_RemontArve]
ON [dbo].[ArveSet]
    ([Remont_remont_id]);
GO

-- Creating foreign key on [Remont_remont_id] in table 'Remont_TootajaSet'
ALTER TABLE [dbo].[Remont_TootajaSet]
ADD CONSTRAINT [FK_RemontRemont_Tootaja]
    FOREIGN KEY ([Remont_remont_id])
    REFERENCES [dbo].[RemontSet]
        ([remont_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Tootaja_tootaja_id] in table 'Remont_TootajaSet'
ALTER TABLE [dbo].[Remont_TootajaSet]
ADD CONSTRAINT [FK_TootajaRemont_Tootaja]
    FOREIGN KEY ([Tootaja_tootaja_id])
    REFERENCES [dbo].[TootajaSet]
        ([tootaja_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TootajaRemont_Tootaja'
CREATE INDEX [IX_FK_TootajaRemont_Tootaja]
ON [dbo].[Remont_TootajaSet]
    ([Tootaja_tootaja_id]);
GO

-- Creating foreign key on [Remont_remont_id] in table 'Remont_TooSet'
ALTER TABLE [dbo].[Remont_TooSet]
ADD CONSTRAINT [FK_RemontRemont_Too]
    FOREIGN KEY ([Remont_remont_id])
    REFERENCES [dbo].[RemontSet]
        ([remont_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Too_too_id] in table 'Remont_TooSet'
ALTER TABLE [dbo].[Remont_TooSet]
ADD CONSTRAINT [FK_TooRemont_Too]
    FOREIGN KEY ([Too_too_id])
    REFERENCES [dbo].[TooSet]
        ([too_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TooRemont_Too'
CREATE INDEX [IX_FK_TooRemont_Too]
ON [dbo].[Remont_TooSet]
    ([Too_too_id]);
GO

-- Creating foreign key on [Remont_remont_id] in table 'Remont_VaruosaSet'
ALTER TABLE [dbo].[Remont_VaruosaSet]
ADD CONSTRAINT [FK_RemontRemont_Varuosa]
    FOREIGN KEY ([Remont_remont_id])
    REFERENCES [dbo].[RemontSet]
        ([remont_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Varuosa_varuosa_id] in table 'Remont_VaruosaSet'
ALTER TABLE [dbo].[Remont_VaruosaSet]
ADD CONSTRAINT [FK_VaruosaRemont_Varuosa]
    FOREIGN KEY ([Varuosa_varuosa_id])
    REFERENCES [dbo].[VaruosaSet]
        ([varuosa_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VaruosaRemont_Varuosa'
CREATE INDEX [IX_FK_VaruosaRemont_Varuosa]
ON [dbo].[Remont_VaruosaSet]
    ([Varuosa_varuosa_id]);
GO

-- Creating foreign key on [Tootaja_tootaja_id] in table 'Tootaja_AmetikohtSet'
ALTER TABLE [dbo].[Tootaja_AmetikohtSet]
ADD CONSTRAINT [FK_TootajaTootaja_Ametikoht]
    FOREIGN KEY ([Tootaja_tootaja_id])
    REFERENCES [dbo].[TootajaSet]
        ([tootaja_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Ametikoht_ametikoht_id] in table 'Tootaja_AmetikohtSet'
ALTER TABLE [dbo].[Tootaja_AmetikohtSet]
ADD CONSTRAINT [FK_AmetikohtTootaja_Ametikoht]
    FOREIGN KEY ([Ametikoht_ametikoht_id])
    REFERENCES [dbo].[AmetikohtSet]
        ([ametikoht_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AmetikohtTootaja_Ametikoht'
CREATE INDEX [IX_FK_AmetikohtTootaja_Ametikoht]
ON [dbo].[Tootaja_AmetikohtSet]
    ([Ametikoht_ametikoht_id]);
GO

-- Creating foreign key on [Tarnija_tarnija_id] in table 'Tarnija_VaruosaSet'
ALTER TABLE [dbo].[Tarnija_VaruosaSet]
ADD CONSTRAINT [FK_TarnijaTarnija_Varuosa]
    FOREIGN KEY ([Tarnija_tarnija_id])
    REFERENCES [dbo].[TarnijaSet]
        ([tarnija_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Varuosa_varuosa_id] in table 'Tarnija_VaruosaSet'
ALTER TABLE [dbo].[Tarnija_VaruosaSet]
ADD CONSTRAINT [FK_VaruosaTarnija_Varuosa]
    FOREIGN KEY ([Varuosa_varuosa_id])
    REFERENCES [dbo].[VaruosaSet]
        ([varuosa_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VaruosaTarnija_Varuosa'
CREATE INDEX [IX_FK_VaruosaTarnija_Varuosa]
ON [dbo].[Tarnija_VaruosaSet]
    ([Varuosa_varuosa_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------