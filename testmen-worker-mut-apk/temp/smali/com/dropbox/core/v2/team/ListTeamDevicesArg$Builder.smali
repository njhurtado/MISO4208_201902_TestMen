.class public Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
.super Ljava/lang/Object;
.source "ListTeamDevicesArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/ListTeamDevicesArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected cursor:Ljava/lang/String;

.field protected includeDesktopClients:Z

.field protected includeMobileClients:Z

.field protected includeWebSessions:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->cursor:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    .line 123
    iput-boolean v1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    .line 124
    iput-boolean v1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    .line 125
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ListTeamDevicesArg;
    .locals 5

    .prologue
    .line 213
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->cursor:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 0
    .param p1, "cursor"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->cursor:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 1
    .param p1, "includeDesktopClients"    # Ljava/lang/Boolean;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    .line 182
    :goto_0
    return-object p0

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    goto :goto_0
.end method

.method public withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 1
    .param p1, "includeMobileClients"    # Ljava/lang/Boolean;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    .line 203
    :goto_0
    return-object p0

    .line 201
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    goto :goto_0
.end method

.method public withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 1
    .param p1, "includeWebSessions"    # Ljava/lang/Boolean;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    .line 161
    :goto_0
    return-object p0

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    goto :goto_0
.end method
