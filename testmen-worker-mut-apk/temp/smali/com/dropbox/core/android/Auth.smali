.class public Lcom/dropbox/core/android/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOAuth2Token()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 74
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 76
    .local v0, "data":Landroid/content/Intent;
    if-nez v0, :cond_1

    move-object v1, v4

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 80
    :cond_1
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "token":Ljava/lang/String;
    const-string v5, "ACCESS_SECRET"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "secret":Ljava/lang/String;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "uid":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    const-string v5, ""

    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    const-string v5, ""

    .line 86
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move-object v1, v4

    .line 90
    goto :goto_0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 94
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 96
    .local v0, "data":Landroid/content/Intent;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 110
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    const-string v5, "ACCESS_TOKEN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "token":Ljava/lang/String;
    const-string v5, "ACCESS_SECRET"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "secret":Ljava/lang/String;
    const-string v5, "UID"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "uid":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    const-string v5, ""

    .line 105
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    const-string v5, ""

    .line 106
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move-object v3, v4

    .line 110
    goto :goto_0
.end method

.method public static startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0, v0, v0}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "desiredUid"    # Ljava/lang/String;
    .param p3, "alreadyAuthedUids"    # [Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/android/AuthActivity;->checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 54
    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desiredUid cannot be present in alreadyAuthedUids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    const-string v6, "1"

    .line 60
    .local v6, "apiType":Ljava/lang/String;
    const-string v5, "www.dropbox.com"

    .local v5, "webHost":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 61
    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/android/AuthActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 64
    .local v7, "intent":Landroid/content/Intent;
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 68
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    :cond_2
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
