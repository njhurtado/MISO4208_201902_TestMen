.class public Lcom/dropbox/core/v2/team/MemberDevices;
.super Ljava/lang/Object;
.source "MemberDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MemberDevices$Serializer;,
        Lcom/dropbox/core/v2/team/MemberDevices$Builder;
    }
.end annotation


# instance fields
.field protected final desktopClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mobileClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final teamMemberId:Ljava/lang/String;

.field protected final webSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "teamMemberId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/team/MemberDevices;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "teamMemberId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "webSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/ActiveWebSession;>;"
    .local p3, "desktopClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/DesktopClientSession;>;"
    .local p4, "mobileClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MobileClientSession;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'teamMemberId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    .line 52
    if-eqz p2, :cond_2

    .line 53
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ActiveWebSession;

    .line 54
    .local v0, "x":Lcom/dropbox/core/v2/team/ActiveWebSession;
    if-nez v0, :cond_1

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'webSessions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0    # "x":Lcom/dropbox/core/v2/team/ActiveWebSession;
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    .line 60
    if-eqz p3, :cond_4

    .line 61
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DesktopClientSession;

    .line 62
    .local v0, "x":Lcom/dropbox/core/v2/team/DesktopClientSession;
    if-nez v0, :cond_3

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'desktopClients\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v0    # "x":Lcom/dropbox/core/v2/team/DesktopClientSession;
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    .line 68
    if-eqz p4, :cond_6

    .line 69
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MobileClientSession;

    .line 70
    .local v0, "x":Lcom/dropbox/core/v2/team/MobileClientSession;
    if-nez v0, :cond_5

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'mobileClients\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MobileClientSession;
    :cond_6
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    .line 76
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberDevices$Builder;
    .locals 1
    .param p0, "teamMemberId"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/MemberDevices$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    if-ne p1, p0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 260
    check-cast v0, Lcom/dropbox/core/v2/team/MemberDevices;

    .line 261
    .local v0, "other":Lcom/dropbox/core/v2/team/MemberDevices;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    .line 262
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    .line 263
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    .line 264
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MemberDevices;
    :cond_6
    move v1, v2

    .line 268
    goto :goto_0
.end method

.method public getDesktopClients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    return-object v0
.end method

.method public getMobileClients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 244
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 250
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberDevices$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberDevices$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
