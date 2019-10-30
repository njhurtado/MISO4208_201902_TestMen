.class Lcom/dropbox/core/android/AuthActivity$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/android/AuthActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/android/AuthActivity;

.field final synthetic val$officialAuthIntent:Landroid/content/Intent;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/android/AuthActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dropbox/core/android/AuthActivity;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iput-object p2, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$officialAuthIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "running startActivity in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$officialAuthIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/dropbox/core/android/DbxOfficialAppConnector;->getDropboxAppPackage(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$officialAuthIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/dropbox/core/android/AuthActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$state:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dropbox/core/android/AuthActivity;->access$202(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    invoke-static {v3, v3, v3}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 471
    :goto_1
    return-void

    .line 460
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity$3;->val$state:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dropbox/core/android/AuthActivity;->access$100(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not launch intent. User may have restricted profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$3;->this$0:Lcom/dropbox/core/android/AuthActivity;

    invoke-virtual {v1}, Lcom/dropbox/core/android/AuthActivity;->finish()V

    goto :goto_1
.end method
