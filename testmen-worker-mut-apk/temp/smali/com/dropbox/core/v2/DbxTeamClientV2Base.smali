.class public Lcom/dropbox/core/v2/DbxTeamClientV2Base;
.super Ljava/lang/Object;
.source "DbxTeamClientV2Base.java"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field private final team:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1
    .param p1, "_client"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->team:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 24
    return-void
.end method


# virtual methods
.method public team()Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxTeamClientV2Base;->team:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    return-object v0
.end method
