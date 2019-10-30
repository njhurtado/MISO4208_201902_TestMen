.class public Lcom/uservoice/uservoicesdk/UserVoice;
.super Ljava/lang/Object;
.source "UserVoice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "1.2.6"

    return-object v0
.end method

.method public static init(Lcom/uservoice/uservoicesdk/Config;Landroid/content/Context;)V
    .locals 1
    .param p0, "config"    # Lcom/uservoice/uservoicesdk/Config;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->reset()V

    .line 37
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/uservoice/uservoicesdk/Session;->init(Landroid/content/Context;Lcom/uservoice/uservoicesdk/Config;)V

    .line 38
    invoke-static {p1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public static launchContactUs(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/ContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public static launchForum(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method public static launchPostIdea(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method public static launchUserVoice(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uservoice/uservoicesdk/activity/PortalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public static setExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "scope"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/uservoice/uservoicesdk/Session;->setExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static track(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uservoice/uservoicesdk/UserVoice;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public static track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1, p2}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    return-void
.end method
