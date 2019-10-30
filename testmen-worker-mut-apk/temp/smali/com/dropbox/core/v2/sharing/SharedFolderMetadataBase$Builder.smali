.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
.super Ljava/lang/Object;
.source "SharedFolderMetadataBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final isInsideTeamFolder:Z

.field protected final isTeamFolder:Z

.field protected ownerTeam:Lcom/dropbox/core/v2/users/Team;

.field protected parentSharedFolderId:Ljava/lang/String;

.field protected pathLower:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V
    .locals 2
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "isInsideTeamFolder"    # Z
    .param p3, "isTeamFolder"    # Z

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accessType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 185
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isInsideTeamFolder:Z

    .line 186
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isTeamFolder:Z

    .line 187
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 188
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->pathLower:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
    .locals 7

    .prologue
    .line 247
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isInsideTeamFolder:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isTeamFolder:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->pathLower:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0
    .param p1, "ownerTeam"    # Lcom/dropbox/core/v2/users/Team;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 202
    return-object p0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 2
    .param p1, "parentSharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0
    .param p1, "pathLower"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->pathLower:Ljava/lang/String;

    .line 237
    return-object p0
.end method
