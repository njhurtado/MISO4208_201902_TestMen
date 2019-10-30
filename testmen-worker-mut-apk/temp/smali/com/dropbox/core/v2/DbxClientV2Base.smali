.class public Lcom/dropbox/core/v2/DbxClientV2Base;
.super Ljava/lang/Object;
.source "DbxClientV2Base.java"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field private final auth:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

.field private final files:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final paper:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field private final sharing:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field private final users:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1
    .param p1, "_client"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->auth:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->files:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->paper:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->sharing:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->users:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    .line 36
    return-void
.end method


# virtual methods
.method public auth()Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->auth:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    return-object v0
.end method

.method public files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->files:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    return-object v0
.end method

.method public paper()Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->paper:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    return-object v0
.end method

.method public sharing()Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->sharing:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    return-object v0
.end method

.method public users()Lcom/dropbox/core/v2/users/DbxUserUsersRequests;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->users:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    return-object v0
.end method
