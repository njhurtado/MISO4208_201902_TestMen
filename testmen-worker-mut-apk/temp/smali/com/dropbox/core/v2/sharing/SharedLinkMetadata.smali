.class public Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
.super Ljava/lang/Object;
.source "SharedLinkMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;,
        Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

.field protected final expires:Ljava/util/Date;

.field protected final id:Ljava/lang/String;

.field protected final linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

.field protected final name:Ljava/lang/String;

.field protected final pathLower:Ljava/lang/String;

.field protected final teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "linkPermissions"    # Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .prologue
    const/4 v4, 0x0

    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "linkPermissions"    # Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "expires"    # Ljava/util/Date;
    .param p6, "pathLower"    # Ljava/lang/String;
    .param p7, "teamMemberInfo"    # Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .param p8, "contentOwnerTeamInfo"    # Lcom/dropbox/core/v2/users/Team;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    .line 70
    if-eqz p4, :cond_1

    .line 71
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    .line 76
    if-nez p2, :cond_2

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    .line 80
    invoke-static {p5}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    .line 81
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    .line 82
    if-nez p3, :cond_3

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'linkPermissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .line 86
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 87
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    .line 88
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "linkPermissions"    # Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .prologue
    .line 200
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    if-ne p1, p0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v1

    .line 346
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v0, p1

    .line 347
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    .line 348
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .line 350
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/LinkPermissions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    .line 352
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    .line 353
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 354
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    .line 355
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_9
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :cond_a
    move v1, v2

    .line 359
    goto/16 :goto_0
.end method

.method public getContentOwnerTeamInfo()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPermissions()Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberInfo()Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 327
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->expires:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->pathLower:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 337
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
