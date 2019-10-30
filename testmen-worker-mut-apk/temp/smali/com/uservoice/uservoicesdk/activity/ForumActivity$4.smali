.class Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/ForumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->access$100(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)V

    .line 216
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    new-instance v1, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4$1;

    invoke-direct {v1, p0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4$1;-><init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Session;->setSignInListener(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method
