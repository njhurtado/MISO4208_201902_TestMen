.class public Lcom/dropbox/core/v2/files/FileMetadata;
.super Lcom/dropbox/core/v2/files/Metadata;
.source "FileMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FileMetadata$Serializer;,
        Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final clientModified:Ljava/util/Date;

.field protected final contentHash:Ljava/lang/String;

.field protected final hasExplicitSharedMembers:Ljava/lang/Boolean;

.field protected final id:Ljava/lang/String;

.field protected final mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

.field protected final propertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected final rev:Ljava/lang/String;

.field protected final serverModified:Ljava/util/Date;

.field protected final sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

.field protected final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "clientModified"    # Ljava/util/Date;
    .param p4, "serverModified"    # Ljava/util/Date;
    .param p5, "rev"    # Ljava/lang/String;
    .param p6, "size"    # J

    .prologue
    .line 170
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v15}, Lcom/dropbox/core/v2/files/FileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/MediaInfo;Lcom/dropbox/core/v2/files/FileSharingInfo;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/MediaInfo;Lcom/dropbox/core/v2/files/FileSharingInfo;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "clientModified"    # Ljava/util/Date;
    .param p4, "serverModified"    # Ljava/util/Date;
    .param p5, "rev"    # Ljava/lang/String;
    .param p6, "size"    # J
    .param p8, "pathLower"    # Ljava/lang/String;
    .param p9, "pathDisplay"    # Ljava/lang/String;
    .param p10, "parentSharedFolderId"    # Ljava/lang/String;
    .param p11, "mediaInfo"    # Lcom/dropbox/core/v2/files/MediaInfo;
    .param p12, "sharingInfo"    # Lcom/dropbox/core/v2/files/FileSharingInfo;
    .param p14, "hasExplicitSharedMembers"    # Ljava/lang/Boolean;
    .param p15, "contentHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/MediaInfo;",
            "Lcom/dropbox/core/v2/files/FileSharingInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p13, "propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    invoke-direct {p0, p1, p8, p9, p10}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Required value for \'id\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String \'id\' is shorter than 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    .line 102
    if-nez p3, :cond_2

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Required value for \'clientModified\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_2
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    .line 106
    if-nez p4, :cond_3

    .line 107
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Required value for \'serverModified\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_3
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    .line 110
    if-nez p5, :cond_4

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Required value for \'rev\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_5

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String \'rev\' is shorter than 9"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_5
    const-string v2, "[0-9a-f]+"

    invoke-static {v2, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String \'rev\' does not match pattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_6
    iput-object p5, p0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    .line 120
    iput-wide p6, p0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    .line 121
    iput-object p11, p0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    .line 122
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    .line 123
    if-eqz p13, :cond_8

    .line 124
    invoke-interface/range {p13 .. p13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/properties/PropertyGroup;

    .line 125
    .local v1, "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    if-nez v1, :cond_7

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An item in list \'propertyGroups\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    .end local v1    # "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    :cond_8
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    .line 131
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    .line 132
    if-eqz p15, :cond_a

    .line 133
    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_9

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String \'contentHash\' is shorter than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_9
    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_a

    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String \'contentHash\' is longer than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_a
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "clientModified"    # Ljava/util/Date;
    .param p3, "serverModified"    # Ljava/util/Date;
    .param p4, "rev"    # Ljava/lang/String;
    .param p5, "size"    # J

    .prologue
    .line 349
    new-instance v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/files/FileMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 579
    if-ne p1, p0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v1

    .line 583
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v0, p1

    .line 584
    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;

    .line 585
    .local v0, "other":Lcom/dropbox/core/v2/files/FileMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    .line 586
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    .line 587
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    .line 588
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    .line 589
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_6
    iget-wide v4, p0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    .line 591
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    .line 592
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 593
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_9
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    .line 594
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_a
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    .line 595
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/FileSharingInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_b
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    .line 596
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_d

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    .line 597
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    .line 598
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_e
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/FileMetadata;
    :cond_f
    move v1, v2

    .line 602
    goto/16 :goto_0
.end method

.method public getClientModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    return-object v0
.end method

.method public getContentHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    return-object v0
.end method

.method public getHasExplicitSharedMembers()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaInfo()Lcom/dropbox/core/v2/files/MediaInfo;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    return-object v0
.end method

.method public getServerModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    return-object v0
.end method

.method public getSharingInfo()Lcom/dropbox/core/v2/files/FileSharingInfo;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 561
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    .line 566
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 561
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 573
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/Metadata;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 574
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
