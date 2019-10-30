.class Lcom/uservoice/uservoicesdk/activity/ForumActivity$4$1;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4$1;->this$1:Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4$1;->this$1:Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->access$000(Lcom/uservoice/uservoicesdk/activity/ForumActivity;)Lcom/uservoice/uservoicesdk/model/Forum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4$1;->this$1:Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$4;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/ForumActivity;->getModelAdapter()Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->reload()V

    .line 222
    :cond_0
    return-void
.end method
