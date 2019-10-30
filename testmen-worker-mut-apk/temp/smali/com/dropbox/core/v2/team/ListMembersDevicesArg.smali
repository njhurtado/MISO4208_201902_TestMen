.class Lcom/dropbox/core/v2/team/ListMembersDevicesArg;
.super Ljava/lang/Object;
.source "ListMembersDevicesArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;,
        Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final includeDesktopClients:Z

.field protected final includeMobileClients:Z

.field protected final includeWebSessions:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/String;
    .param p2, "includeWebSessions"    # Z
    .param p3, "includeDesktopClients"    # Z
    .param p4, "includeMobileClients"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeWebSessions:Z

    .line 45
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeDesktopClients:Z

    .line 46
    iput-boolean p4, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeMobileClients:Z

    .line 47
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-ne p1, p0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 235
    check-cast v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;

    .line 236
    .local v0, "other":Lcom/dropbox/core/v2/team/ListMembersDevicesArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeWebSessions:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeWebSessions:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeDesktopClients:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeDesktopClients:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeMobileClients:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeMobileClients:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/ListMembersDevicesArg;
    :cond_4
    move v1, v2

    .line 243
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeDesktopClients()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeDesktopClients:Z

    return v0
.end method

.method public getIncludeMobileClients()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeMobileClients:Z

    return v0
.end method

.method public getIncludeWebSessions()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeWebSessions:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 219
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeWebSessions:Z

    .line 221
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeDesktopClients:Z

    .line 222
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeMobileClients:Z

    .line 223
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 219
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 225
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
