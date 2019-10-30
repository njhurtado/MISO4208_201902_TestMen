.class Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;
.super Lcom/uservoice/uservoicesdk/rest/Callback;
.source "ForumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->search(Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)Lcom/uservoice/uservoicesdk/rest/RestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/rest/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Suggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;

.field final synthetic val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->this$1:Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/rest/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 1
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    .line 181
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->onModel(Ljava/util/List;)V

    return-void
.end method

.method public onModel(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Suggestion;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->this$1:Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/ForumActivity;

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->SEARCH_IDEAS:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->val$query:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;Ljava/lang/String;Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/ForumActivity$1$1;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onModel(Ljava/lang/Object;)V

    .line 176
    return-void
.end method
