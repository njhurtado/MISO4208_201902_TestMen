.class public Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;
.super Ljava/lang/Object;
.source "ListMemberDevicesResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected activeWebSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;"
        }
    .end annotation
.end field

.field protected desktopClientSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;"
        }
    .end annotation
.end field

.field protected mobileClientSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->activeWebSessions:Ljava/util/List;

    .line 123
    iput-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->desktopClientSessions:Ljava/util/List;

    .line 124
    iput-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->mobileClientSessions:Ljava/util/List;

    .line 125
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->activeWebSessions:Ljava/util/List;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->desktopClientSessions:Ljava/util/List;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->mobileClientSessions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public withActiveWebSessions(Ljava/util/List;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;)",
            "Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "activeWebSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/ActiveWebSession;>;"
    if-eqz p1, :cond_1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ActiveWebSession;

    .line 141
    .local v0, "x":Lcom/dropbox/core/v2/team/ActiveWebSession;
    if-nez v0, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'activeWebSessions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0    # "x":Lcom/dropbox/core/v2/team/ActiveWebSession;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->activeWebSessions:Ljava/util/List;

    .line 147
    return-object p0
.end method

.method public withDesktopClientSessions(Ljava/util/List;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;)",
            "Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "desktopClientSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/DesktopClientSession;>;"
    if-eqz p1, :cond_1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DesktopClientSession;

    .line 164
    .local v0, "x":Lcom/dropbox/core/v2/team/DesktopClientSession;
    if-nez v0, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'desktopClientSessions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v0    # "x":Lcom/dropbox/core/v2/team/DesktopClientSession;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->desktopClientSessions:Ljava/util/List;

    .line 170
    return-object p0
.end method

.method public withMobileClientSessions(Ljava/util/List;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;)",
            "Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "mobileClientSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MobileClientSession;>;"
    if-eqz p1, :cond_1

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MobileClientSession;

    .line 187
    .local v0, "x":Lcom/dropbox/core/v2/team/MobileClientSession;
    if-nez v0, :cond_0

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'mobileClientSessions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MobileClientSession;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;->mobileClientSessions:Ljava/util/List;

    .line 193
    return-object p0
.end method
