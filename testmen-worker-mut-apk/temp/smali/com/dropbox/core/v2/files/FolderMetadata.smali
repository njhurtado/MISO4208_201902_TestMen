.class public Lcom/dropbox/core/v2/files/FolderMetadata;
.super Lcom/dropbox/core/v2/files/Metadata;
.source "FolderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;,
        Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final id:Ljava/lang/String;

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

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/files/FolderMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/FolderSharingInfo;Ljava/util/List;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/FolderSharingInfo;Ljava/util/List;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "pathLower"    # Ljava/lang/String;
    .param p4, "pathDisplay"    # Ljava/lang/String;
    .param p5, "parentSharedFolderId"    # Ljava/lang/String;
    .param p6, "sharedFolderId"    # Ljava/lang/String;
    .param p7, "sharingInfo"    # Lcom/dropbox/core/v2/files/FolderSharingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/FolderSharingInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/properties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p8, "propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-nez p2, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'id\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'id\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    .line 71
    if-eqz p6, :cond_2

    .line 72
    const-string v1, "[-_0-9a-zA-Z:]+"

    invoke-static {v1, p6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2
    iput-object p6, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    .line 78
    if-eqz p8, :cond_4

    .line 79
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/properties/PropertyGroup;

    .line 80
    .local v0, "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    if-nez v0, :cond_3

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'propertyGroups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "x":Lcom/dropbox/core/v2/properties/PropertyGroup;
    :cond_4
    iput-object p8, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    .line 86
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    if-ne p1, p0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v1

    .line 368
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v0, p1

    .line 369
    check-cast v0, Lcom/dropbox/core/v2/files/FolderMetadata;

    .line 370
    .local v0, "other":Lcom/dropbox/core/v2/files/FolderMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    .line 375
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    .line 376
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/FolderSharingInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    .line 377
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_9
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/FolderMetadata;
    :cond_a
    move v1, v2

    .line 381
    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->pathLower:Ljava/lang/String;

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
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingInfo()Lcom/dropbox/core/v2/files/FolderSharingInfo;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 352
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata;->propertyGroups:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 358
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/Metadata;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 359
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    sget-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
